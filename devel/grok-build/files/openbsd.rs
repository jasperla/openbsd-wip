//! OpenBSD sandbox backend using unveil(2) + pledge(2).
//!
//! Maps resolved [`crate::profiles::SandboxProfile`] paths onto OpenBSD's
//! native primitives. Semantics follow **unveil(2)** / **pledge(2)** (OpenBSD
//! current, July 2026), not POSIX directory-search mode bits.
//!
//! # unveil(2) permissions (not Unix chmod)
//!
//! | Char | Meaning | Matching pledge |
//! |------|---------|-----------------|
//! | `r`  | read / rpath (open for read, stat, …) | `rpath` |
//! | `w`  | write / wpath (+ AF_UNIX connect) | `wpath`, `chown`, `fattr` |
//! | `x`  | **execute / execve(2) only** | `exec` |
//! | `c`  | create and remove | `cpath`, `dpath`, `unix` |
//!
//! **`x` is not path lookup.** Directory search is not an unveil permission.
//! `unveil()` itself can still traverse the whole filesystem to register more
//! unveils. After lock, `open`/`chmod`/`rename` only see unveiled paths.
//!
//! A **directory** unveil grants that permission on the **entire subtree**
//! unless a more specific unveil exists below. Therefore unveiling `"/"` with
//! `"x"` (or any parent with `"x"`) allows **execve of every file** under that
//! tree. The old backend did that by treating ancestor components as
//! lookup-only `"x"` — that was wrong and made `strict` able to exec anything.
//!
//! # Mapping
//!
//! | Grok profile field | OpenBSD mechanism |
//! |--------------------|-------------------|
//! | `default_read`     | `unveil("/", "r")` — **read**, not `"rx"` |
//! | `read_only`        | `unveil(path, "r")` (data). Exec dirs are separate. |
//! | `read_write`       | `unveil(path, "rwc")`; workspace also `"x"` so `./tool` works |
//! | system bin dirs    | `unveil(dir, "rx")` — read + **execve** of tools |
//! | system lib dirs    | `unveil(dir, "r")` — `.so` is `open`/`mmap`, not execve |
//! | device files       | `unveil(path, "rw")` — no ancestor unveils |
//! | `/tmp`, `$TMPDIR`  | `unveil(..., "rwc")` — **no** `x` (don't exec from tmp) |
//! | `deny`             | Only effective when `default_read` is false |
//! | process syscalls   | `pledge(2)` (no `tmppath` — EINVAL on OpenBSD 7.8+) |
//!
//! Do **not** unveil intermediate path components.

use crate::paths::{DEVICE_DIRS, DEVICE_FILES};
use crate::profiles::SandboxProfile;
use std::collections::BTreeMap;
use std::ffi::CString;
use std::path::{Path, PathBuf};

/// Directories where `execve(2)` of tools is expected (PATH + helpers).
const EXEC_DIRS: &[&str] = &[
    "/bin",
    "/sbin",
    "/usr/bin",
    "/usr/sbin",
    "/usr/libexec",
    "/libexec",
    "/usr/X11R6/bin",
    "/usr/local/bin",
    "/usr/local/sbin",
    "/usr/local/libexec",
];

/// Shared libraries and ld.so — opened/mapped, not execve'd.
const LIB_DIRS: &[&str] = &[
    "/lib",
    "/usr/lib",
    "/usr/local/lib",
    "/usr/X11R6/lib",
];

/// Extra read-only OS data when `default_read` is false (`/usr` is **not**
/// unveiled whole — that would add `"x"` to all of `/usr` if we used `"rx"`).
const READ_DIRS_STRICT: &[&str] = &[
    "/etc",
    "/usr/share",
    "/usr/local/share",
    "/var/run",
];

/// Apply unveil + pledge for a resolved profile. **Irreversible.**
pub fn apply_profile(profile: &SandboxProfile) -> anyhow::Result<()> {
    let mut unveils: BTreeMap<PathBuf, String> = BTreeMap::new();

    if profile.default_read {
        merge(&mut unveils, PathBuf::from("/"), "r");
        if !profile.deny.is_empty() {
            tracing::warn!(
                deny_count = profile.deny.len(),
                "OpenBSD unveil cannot enforce deny paths while default_read \
                 grants '/' ; prefer profile 'strict' for real denials."
            );
        }
    }

    // Exec of /bin/sh, rustc, git, … is unveil "x", independent of default_read.
    // ("/"+"r" does not allow execve.)
    for p in EXEC_DIRS {
        add_if_exists(&mut unveils, Path::new(p), "rx");
    }
    for p in LIB_DIRS {
        add_if_exists(&mut unveils, Path::new(p), "r");
    }

    if !profile.default_read {
        for p in READ_DIRS_STRICT {
            add_if_exists(&mut unveils, Path::new(p), "r");
        }
    }

    for path in &profile.read_only {
        if path.exists() {
            // Profile read_only is data/config, not "may exec everything here".
            merge(&mut unveils, path.to_path_buf(), "r");
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
        // Workspace: rwc + x so the agent can exec project-local tools.
        merge(&mut unveils, path.to_path_buf(), "rwxc");
    }

    for dev in DEVICE_FILES {
        add_if_exists(&mut unveils, Path::new(dev), "rw");
    }
    for dev in DEVICE_DIRS {
        add_if_exists(&mut unveils, Path::new(dev), "rw");
    }

    // mkstemp replacement (pledge tmppath is gone): unveil tmp as rwc, not x.
    for p in crate::paths::temp_writable_paths() {
        if p.exists() {
            merge(&mut unveils, p, "rwc");
        }
    }

    // Parents first only for readability in logs; unveil can register any path.
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

    // OpenBSD 7.8+: `tmppath` is EINVAL. Use unveil("/tmp","rwc") instead.
    // execpromises left NULL: children start unpledged but still unveiled.
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

fn add_if_exists(map: &mut BTreeMap<PathBuf, String>, path: &Path, perms: &str) {
    if path.exists() {
        merge(map, path.to_path_buf(), perms);
    }
}

fn merge(map: &mut BTreeMap<PathBuf, String>, path: PathBuf, perms: &str) {
    map.entry(path)
        .and_modify(|existing| *existing = merge_perms(existing, perms))
        .or_insert_with(|| perms.to_string());
}

/// Merge unveil permission sets (union of flag characters).
fn merge_perms(a: &str, b: &str) -> String {
    let mut chars: Vec<char> = a.chars().chain(b.chars()).collect();
    chars.sort_unstable();
    chars.dedup();
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

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn merge_perms_unions_and_orders() {
        assert_eq!(merge_perms("r", "x"), "rx");
        assert_eq!(merge_perms("xc", "rw"), "rwxc");
        assert_eq!(merge_perms("r", "r"), "r");
    }

    #[test]
    fn exec_dirs_do_not_include_root_or_tmp() {
        assert!(!EXEC_DIRS.contains(&"/"));
        assert!(!EXEC_DIRS.contains(&"/tmp"));
        assert!(!EXEC_DIRS.contains(&"/home"));
        assert!(EXEC_DIRS.contains(&"/usr/bin"));
        assert!(EXEC_DIRS.contains(&"/usr/local/bin"));
    }

    #[test]
    fn lib_dirs_are_read_not_exec_policy() {
        assert!(LIB_DIRS.iter().all(|p| !p.ends_with("bin")));
    }
}
