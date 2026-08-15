//! OpenBSD sandbox backend using unveil(2) + pledge(2).
//!
//! Maps resolved [`crate::profiles::SandboxProfile`] paths onto OpenBSD's
//! native primitives. Local-first implementation in xai-grok-sandbox.
//!
//! # Capability mapping
//!
//! | Grok profile field | OpenBSD mechanism |
//! |--------------------|-------------------|
//! | `default_read`     | `unveil("/", "rx")` |
//! | `read_only`        | `unveil(path, "rx")` |
//! | `read_write`       | `unveil(path, "rwxc")` |
//! | device files       | `unveil(path, "rw")` |
//! | `deny`             | Only effective when `default_read` is false |
//! | process syscalls   | `pledge(2)` (no `tmppath` on OpenBSD 7.9) |
//!
//! Intermediate path components for absolute paths use unveil `"x"` (lookup
//! only) so we do **not** grant full-tree read via `unveil("/", "r")`.
//! Permissions are merged so a later narrower unveil cannot clobber a
//! broader one (common when `/tmp` is both an ancestor and a leaf).

use crate::paths::{DEVICE_DIRS, DEVICE_FILES};
use crate::profiles::SandboxProfile;
use std::collections::BTreeMap;
use std::ffi::CString;
use std::path::{Path, PathBuf};

/// Apply unveil + pledge for a resolved profile. **Irreversible.**
pub fn apply_profile(profile: &SandboxProfile) -> anyhow::Result<()> {
    let mut unveils: BTreeMap<PathBuf, String> = BTreeMap::new();

    let merge = |map: &mut BTreeMap<PathBuf, String>, path: PathBuf, perms: &str| {
        map.entry(path)
            .and_modify(|existing| *existing = merge_perms(existing, perms))
            .or_insert_with(|| perms.to_string());
    };

    if profile.default_read {
        merge(&mut unveils, PathBuf::from("/"), "rx");
        if !profile.deny.is_empty() {
            tracing::warn!(
                deny_count = profile.deny.len(),
                "OpenBSD unveil cannot enforce deny paths while default_read \
                 grants '/' ; prefer profile 'strict' for real denials."
            );
        }
    }

    for path in &profile.read_only {
        if path.exists() {
            add_path_with_ancestors(&mut unveils, path, "rx", &merge);
        }
    }

    for path in &profile.read_write {
        if !path.exists() {
            if let Err(e) = std::fs::create_dir_all(path) {
                tracing::warn!(
                    path = %path.display(),
                    error = %e,
                    "read_write path missing and could not be created; skipping"
                );
                continue;
            }
        }
        add_path_with_ancestors(&mut unveils, path, "rwxc", &merge);
    }

    for dev in DEVICE_FILES {
        let p = Path::new(dev);
        if p.exists() {
            add_path_with_ancestors(&mut unveils, p, "rw", &merge);
        }
    }
    for dev in DEVICE_DIRS {
        let p = Path::new(dev);
        if p.exists() {
            add_path_with_ancestors(&mut unveils, p, "rw", &merge);
        }
    }

    if !profile.default_read {
        for p in [
            "/bin", "/sbin", "/usr", "/etc", "/lib", "/libexec", "/dev",
        ] {
            let pb = Path::new(p);
            if pb.exists() {
                add_path_with_ancestors(&mut unveils, pb, "rx", &merge);
            }
        }
        for p in ["/tmp", "/var/tmp"] {
            let pb = Path::new(p);
            if pb.exists() {
                add_path_with_ancestors(&mut unveils, pb, "rwxc", &merge);
            }
        }
    }

    // Apply merged unveils (parents before children helps path resolution).
    let mut paths: Vec<(PathBuf, String)> = unveils.into_iter().collect();
    paths.sort_by(|a, b| {
        a.0.as_os_str()
            .len()
            .cmp(&b.0.as_os_str().len())
            .then_with(|| a.0.cmp(&b.0))
    });
    for (path, perms) in &paths {
        unveil_path(path, perms)?;
    }

    unveil_lock()?;

    // OpenBSD 7.9: `tmppath` is not a valid promise (EINVAL).
    let promises = "stdio rpath wpath cpath dpath proc exec inet dns unix tty \
                    flock fattr getpw id sendfd recvfd";
    pledge(promises)?;

    tracing::info!(
        profile = %profile.name,
        default_read = profile.default_read,
        unveil_count = paths.len(),
        "OpenBSD sandbox applied (unveil locked + pledge)"
    );
    Ok(())
}

fn add_path_with_ancestors(
    map: &mut BTreeMap<PathBuf, String>,
    path: &Path,
    leaf_perms: &str,
    merge: &dyn Fn(&mut BTreeMap<PathBuf, String>, PathBuf, &str),
) {
    for anc in path.ancestors() {
        if anc.as_os_str().is_empty() {
            continue;
        }
        if anc == path {
            merge(map, path.to_path_buf(), leaf_perms);
        } else if anc.exists() {
            // Lookup-only on intermediates — never full-tree read via "/".
            merge(map, anc.to_path_buf(), "x");
        }
    }
}

/// Merge unveil permission sets (union of flag characters).
fn merge_perms(a: &str, b: &str) -> String {
    let mut chars: Vec<char> = a.chars().chain(b.chars()).collect();
    chars.sort_unstable();
    chars.dedup();
    // Keep a stable preferred order: r w x c
    let mut out = String::new();
    for c in ['r', 'w', 'x', 'c'] {
        if chars.contains(&c) {
            out.push(c);
        }
    }
    out
}

fn unveil_path(path: &Path, perms: &str) -> anyhow::Result<()> {
    let Some(path_str) = path.to_str() else {
        anyhow::bail!("non-UTF8 path in unveil: {path:?}");
    };
    let c_path = CString::new(path_str)
        .map_err(|e| anyhow::anyhow!("unveil path CString: {e}"))?;
    let c_perms = CString::new(perms)
        .map_err(|e| anyhow::anyhow!("unveil perms CString: {e}"))?;
    let rc = unsafe { libc::unveil(c_path.as_ptr(), c_perms.as_ptr()) };
    if rc != 0 {
        let err = std::io::Error::last_os_error();
        anyhow::bail!("unveil({}, \"{}\"): {err}", path.display(), perms);
    }
    Ok(())
}

fn unveil_lock() -> anyhow::Result<()> {
    let rc = unsafe { libc::unveil(std::ptr::null(), std::ptr::null()) };
    if rc != 0 {
        let err = std::io::Error::last_os_error();
        anyhow::bail!("unveil(NULL, NULL) lock failed: {err}");
    }
    Ok(())
}

fn pledge(promises: &str) -> anyhow::Result<()> {
    let c_promises = CString::new(promises)
        .map_err(|e| anyhow::anyhow!("pledge CString: {e}"))?;
    let rc = unsafe { libc::pledge(c_promises.as_ptr(), std::ptr::null()) };
    if rc != 0 {
        let err = std::io::Error::last_os_error();
        anyhow::bail!("pledge(\"{promises}\"): {err}");
    }
    Ok(())
}

pub fn is_supported() -> bool {
    true
}

pub fn support_details() -> String {
    "OpenBSD unveil(2)+pledge(2) backend in xai-grok-sandbox".to_string()
}
