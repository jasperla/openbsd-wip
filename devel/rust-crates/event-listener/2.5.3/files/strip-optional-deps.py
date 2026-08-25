#!/usr/bin/env python3
"""Make Cargo.toml offline-safe for monorepo-subgraph vendor dirs.

- Drop all [dev-dependencies*]
- Drop optional deps (and target.*.dependencies) not present in vendor
- Drop bare [target."cfg(...)".dependencies] tables for missing pkgs
- Fix [features] so default/other features do not reference removed deps/features
"""
from __future__ import annotations

import re
import sys
from pathlib import Path


def vendor_package_names(vendor: Path) -> set[str]:
    names: set[str] = set()
    if not vendor.is_dir():
        return names
    for child in vendor.iterdir():
        if not child.is_dir() and not child.is_symlink():
            continue
        # Non-greedy name: first "-<digit>" starts the version so
        # toml_parser-1.0.9+spec-1.1.0 → (toml_parser, 1.0.9+spec-1.1.0)
        # not (toml_parser-1.0.9+spec, 1.1.0).
        m = re.match(r"^(.*?)-([0-9].*)$", child.name)
        if m:
            names.add(m.group(1))
        names.add(child.name)
    return names


def section_header(line: str) -> str | None:
    m = re.match(r"^\[([^\]]+)\]\s*$", line.strip())
    return m.group(1) if m else None


def is_dep_header(hdr: str) -> bool:
    """True for dependencies / build-dependencies / target.*.dependencies tables."""
    if hdr in ("dependencies", "build-dependencies"):
        return True
    if hdr.startswith("dependencies.") or hdr.startswith("build-dependencies."):
        return True
    # [target.'cfg(...)'.dependencies] or [target.foo.dependencies.bar]
    if hdr.startswith("target.") and ".dependencies" in hdr:
        return True
    return False


def dep_key_from_header(hdr: str) -> str | None:
    """Package key for [dependencies.foo] / [target.X.dependencies.foo]."""
    if hdr.startswith("dependencies."):
        return hdr.split(".", 1)[1]
    if hdr.startswith("build-dependencies."):
        return hdr.split(".", 1)[1]
    m = re.search(r"\.dependencies\.([^.]+)$", hdr)
    if m:
        return m.group(1)
    return None


def strip_toml(text: str, available: set[str]) -> str:
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    i = 0
    removed_keys: set[str] = set()
    dropped_features: set[str] = set()

    def consume_table_block(start: int) -> tuple[list[str], int]:
        block = [lines[start]]
        j = start + 1
        while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
            block.append(lines[j])
            j += 1
        while j < len(lines) and lines[j].strip() == "":
            block.append(lines[j])
            j += 1
        return block, j

    def consume_section_body(start: int) -> tuple[list[str], int]:
        body: list[str] = []
        j = start
        while j < len(lines) and section_header(lines[j]) is None:
            body.append(lines[j])
            j += 1
        return body, j

    def should_drop_dep(key: str, body: str, force_if_missing: bool) -> bool:
        pkg_m = re.search(r'(?m)^\s*package\s*=\s*"([^"]+)"\s*$', body)
        pkg = pkg_m.group(1) if pkg_m else key
        is_optional = re.search(r"(?m)^\s*optional\s*=\s*true\s*$", body) is not None
        missing = pkg not in available and key not in available
        if force_if_missing and missing:
            return True
        if not missing:
            return False
        # Drop optional always; also drop target-cfg deps (force) when missing
        return is_optional or force_if_missing

    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)

        # Drop all dev-dependencies (incl. target.*.dev-dependencies).
        # Do NOT add their names to removed_keys — a package can be both a
        # runtime optional dep and a dev-dep (zerovec+yoke). Banning the name
        # would strip runtime features like yoke = ["dep:yoke"].
        if hdr and (
            hdr == "dev-dependencies"
            or hdr.startswith("dev-dependencies.")
            or (hdr.startswith("target.") and ".dev-dependencies" in hdr)
        ):
            if hdr.endswith("dev-dependencies") and not hdr.endswith("."):
                # [dev-dependencies] or [target.X.dev-dependencies]
                _, i = consume_section_body(i + 1)
            else:
                # [dev-dependencies.foo] or [target.X.dev-dependencies.foo]
                _, i = consume_table_block(i)
            continue

        # [dependencies.foo] / [build-dependencies.foo] / [target.X.dependencies.foo]
        if hdr and is_dep_header(hdr) and dep_key_from_header(hdr):
            key = dep_key_from_header(hdr)
            assert key is not None
            block, i = consume_table_block(i)
            body = "".join(block)
            # cfg(any()) is never true (indexmap serde trick); always drop the
            # table, but do NOT ban the key — the same optional often exists as
            # a real dep (zerocopy-derive) and banning empties derive = [].
            if "cfg(any())" in hdr:
                continue
            force = hdr.startswith("target.")
            if should_drop_dep(key, body, force_if_missing=force):
                removed_keys.add(key)
                pkg_m = re.search(r'(?m)^\s*package\s*=\s*"([^"]+)"\s*$', body)
                if pkg_m:
                    removed_keys.add(pkg_m.group(1))
                continue
            out.extend(block)
            continue

        # [dependencies] / [build-dependencies] / [target.X.dependencies]
        if hdr in ("dependencies", "build-dependencies") or (
            hdr and hdr.startswith("target.") and hdr.endswith(".dependencies")
        ):
            # Drop entire empty target.cfg(any()) tables (no ban)
            if hdr and "cfg(any())" in hdr:
                _, i = consume_section_body(i + 1)
                continue
            force = bool(hdr and hdr.startswith("target."))
            out.append(line)
            body, i = consume_section_body(i + 1)
            for l2 in body:
                m = re.match(
                    r'^([A-Za-z0-9_-]+)\s*=\s*\{([^}]*)\}\s*$',
                    l2.strip(),
                )
                if m:
                    key = m.group(1)
                    blob = m.group(2)
                    pkg_m = re.search(r'package\s*=\s*"([^"]+)"', blob)
                    pkg = pkg_m.group(1) if pkg_m else key
                    is_opt = re.search(r"\boptional\s*=\s*true\b", blob)
                    missing = pkg not in available and key not in available
                    if missing and (is_opt or force):
                        removed_keys.add(key)
                        removed_keys.add(pkg)
                        continue
                # simple "foo = \"1\"" not optional — keep
                out.append(l2)
            continue

        out.append(line)
        i += 1

    text2 = "".join(out)

    # Multi-pass feature cleanup: drop feature names that only pointed at
    # removed deps; then remove those feature names from other lists (incl default).
    def rewrite_features(src: str, ban: set[str]) -> tuple[str, set[str]]:
        lines2 = src.splitlines(keepends=True)
        out2: list[str] = []
        in_features = False
        newly_dropped: set[str] = set()
        i2 = 0
        while i2 < len(lines2):
            line = lines2[i2]
            hdr = section_header(line)
            if hdr is not None:
                in_features = hdr == "features"
                out2.append(line)
                i2 += 1
                continue
            if in_features:
                m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
                if m:
                    fname = m.group(1)
                    buf = m.group(2)
                    j = i2
                    while "]" not in buf and j + 1 < len(lines2):
                        j += 1
                        buf += "\n" + lines2[j].rstrip("\n")
                    before_br, _, _ = buf.partition("]")
                    parts = re.findall(r'"([^"]+)"', before_br)
                    kept: list[str] = []
                    for p in parts:
                        base = p[4:] if p.startswith("dep:") else p
                        # dep?/feature or package/feature
                        base0 = base.split("?")[0].split("/")[0]
                        if base0 in ban or p in ban or base in ban:
                            continue
                        # also drop if feature name itself was dropped earlier
                        if base0 in newly_dropped:
                            continue
                        kept.append(p)
                    # Always keep feature *definitions*, including empty pure cfg
                    # flags (tokio sync=[], rt=[], fs=[], serde derive after
                    # scrub, …). Dropping them made cargo report "package X does
                    # not have that feature" for dependents (quinn→tokio/sync,
                    # gix→serde/derive, …). scrub_empty_from_default still
                    # removes empty names from default=/compound lists.
                    if not parts or not kept:
                        out2.append(f"{fname} = []\n")
                    else:
                        if len(kept) == 1:
                            out2.append(f'{fname} = ["{kept[0]}"]\n')
                        else:
                            out2.append(f"{fname} = [\n")
                            for k in kept:
                                out2.append(f'    "{k}",\n')
                            out2.append("]\n")
                    i2 = j + 1
                    continue
            out2.append(line)
            i2 += 1
        return "".join(out2), newly_dropped

    ban = set(removed_keys)
    for _ in range(8):
        text2, dropped = rewrite_features(text2, ban)
        if not dropped:
            break
        ban |= dropped
        dropped_features |= dropped

    text2 = re.sub(r"\n{3,}", "\n\n", text2)
    return text2


def refresh_cargo_checksum(crate_dir: Path) -> None:
    """Recompute files hashes in .cargo-checksum.json after editing Cargo.toml."""
    import hashlib
    import json

    ck = crate_dir / ".cargo-checksum.json"
    if not ck.is_file():
        return
    try:
        data = json.loads(ck.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return
    files = data.get("files")
    if not isinstance(files, dict):
        return
    changed = False
    for rel in list(files.keys()):
        p = crate_dir / rel
        if not p.is_file():
            continue
        h = hashlib.sha256(p.read_bytes()).hexdigest()
        if files[rel] != h:
            files[rel] = h
            changed = True
    if changed:
        data["files"] = files
        ck.write_text(json.dumps(data, separators=(",", ":")), encoding="utf-8")


def dep_feature_map(vendor: Path) -> dict[str, set[str]]:
    """package name -> feature names for scrub_cross_features.

    Exact ``name-version`` keys always use that crate's features.

    Package-level (unversioned) keys use the **union** of features across
    versions, but **ignore empty feature sets** (crates with no ``[features]``
    section, e.g. event-listener 2.5.3).  Intersection of empty∩full emptied
    every event-listener/* activation and broke event-listener-strategy.
    """
    per_pkg: dict[str, list[set[str]]] = {}
    out: dict[str, set[str]] = {}
    if not vendor.is_dir():
        return out
    for child in vendor.iterdir():
        if not child.is_dir() and not child.is_symlink():
            continue
        toml = child / "Cargo.toml"
        if not toml.is_file():
            continue
        # Non-greedy name: first "-<digit>" starts the version so
        # toml_parser-1.0.9+spec-1.1.0 → (toml_parser, 1.0.9+spec-1.1.0)
        # not (toml_parser-1.0.9+spec, 1.1.0).
        m = re.match(r"^(.*?)-([0-9].*)$", child.name)
        pkg = m.group(1) if m else child.name
        feats: set[str] = set()
        in_features = False
        try:
            text = toml.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        for line in text.splitlines():
            hdr = section_header(line)
            if hdr is not None:
                in_features = hdr == "features"
                continue
            if in_features:
                fm = re.match(r"^([A-Za-z0-9_-]+)\s*=", line)
                if fm:
                    feats.add(fm.group(1))
        per_pkg.setdefault(pkg, []).append(feats)
        out[child.name] = set(feats)  # exact name-version always exact
    for pkg, sets in per_pkg.items():
        if not sets:
            continue
        # Prefer union of non-empty feature sets so a feature-less old major
        # (event-listener 2.x) does not erase 5.x features.
        nonempty = [s for s in sets if s]
        if not nonempty:
            out[pkg] = set()
            continue
        common: set[str] = set()
        for s in nonempty:
            common |= s
        out[pkg] = common
    return out


def dep_key_aliases(text: str) -> dict[str, str]:
    """Map dependency table key → registry package name (package= renames).

    e.g. [dependencies.common] package = "crypto-common" → common→crypto-common
    """
    aliases: dict[str, str] = {}
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        hdr = section_header(lines[i])
        if hdr and is_dep_header(hdr):
            key = dep_key_from_header(hdr)
            if key:
                # table form [dependencies.foo]
                j = i + 1
                body_lines: list[str] = []
                while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
                    body_lines.append(lines[j])
                    j += 1
                body = "\n".join(body_lines)
                pkg_m = re.search(r'(?m)^\s*package\s*=\s*"([^"]+)"\s*$', body)
                if pkg_m:
                    aliases[key] = pkg_m.group(1)
                i = j
                continue
            # inline section [dependencies] / [target....dependencies]
            if hdr in ("dependencies", "build-dependencies") or (
                hdr.startswith("target.") and hdr.endswith(".dependencies")
            ):
                j = i + 1
                while j < len(lines) and section_header(lines[j]) is None:
                    m = re.match(
                        r'^([A-Za-z0-9_-]+)\s*=\s*\{([^}]*)\}\s*$',
                        lines[j].strip(),
                    )
                    if m:
                        key2 = m.group(1)
                        pkg_m = re.search(r'package\s*=\s*"([^"]+)"', m.group(2))
                        if pkg_m:
                            aliases[key2] = pkg_m.group(1)
                    j += 1
                i = j
                continue
        i += 1
    return aliases


def scrub_cross_features(
    text: str,
    feat_map: dict[str, set[str]],
    aliases: dict[str, str] | None = None,
) -> str:
    """Drop feature activations pkg/feat when feat is not declared on pkg.

    Also multipass-remove local feature names that became empty or only
    referenced dropped features (e.g. logging → aho-corasick/logging).
    Resolves package= renames (common → crypto-common).
    """
    ban_feats: set[str] = set()
    aliases = aliases or {}

    def resolve_pkg(key: str) -> list[str]:
        """Candidates to look up in feat_map."""
        out = [key]
        if key in aliases:
            out.append(aliases[key])
        return out

    def one_pass(src: str) -> tuple[str, set[str]]:
        lines = src.splitlines(keepends=True)
        out: list[str] = []
        newly: set[str] = set()
        in_features = False
        i = 0
        while i < len(lines):
            line = lines[i]
            hdr = section_header(line)
            if hdr is not None:
                in_features = hdr == "features"
                out.append(line)
                i += 1
                continue
            if in_features:
                m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
                if m:
                    fname = m.group(1)
                    buf = m.group(2)
                    j = i
                    while "]" not in buf and j + 1 < len(lines):
                        j += 1
                        buf += "\n" + lines[j].rstrip("\n")
                    before_br, _, _ = buf.partition("]")
                    parts = re.findall(r'"([^"]+)"', before_br)
                    kept: list[str] = []
                    for p in parts:
                        raw = p[4:] if p.startswith("dep:") else p
                        base0 = raw.split("?")[0].split("/")[0]
                        if base0 in ban_feats or p in ban_feats:
                            continue
                        # Drop pkg/feat and pkg?/feat when feat not on pkg.
                        mfeat = re.match(r"^([A-Za-z0-9_-]+)\??/(.+)$", raw)
                        if mfeat:
                            pkg_key, feat = mfeat.group(1), mfeat.group(2)
                            feat0 = feat.split("/")[0]
                            # Prefer rename resolution (common → crypto-common)
                            found = False
                            drop = False
                            for cand in resolve_pkg(pkg_key):
                                if cand in feat_map:
                                    found = True
                                    if feat0 not in feat_map[cand]:
                                        drop = True
                                    break
                            if found and drop:
                                continue
                        kept.append(p)
                    if not parts:
                        out.append(f"{fname} = []\n")
                    elif not kept:
                        # Keep empty feature flags for dependents / --features
                        out.append(f"{fname} = []\n")
                    else:
                        if len(kept) == 1:
                            out.append(f'{fname} = ["{kept[0]}"]\n')
                        else:
                            out.append(f"{fname} = [\n")
                            for k in kept:
                                out.append(f'    "{k}",\n')
                            out.append("]\n")
                    i = j + 1
                    continue
            out.append(line)
            i += 1
        return "".join(out), newly

    for _ in range(8):
        text, newly = one_pass(text)
        if not newly:
            break
        ban_feats |= newly
    return text


def optional_dep_keys(text: str) -> set[str]:
    """All optional dependency keys in this Cargo.toml."""
    keys: set[str] = set()
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        hdr = section_header(lines[i])
        if hdr and is_dep_header(hdr) and dep_key_from_header(hdr):
            key = dep_key_from_header(hdr)
            j = i + 1
            body_lines: list[str] = []
            while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
                body_lines.append(lines[j])
                j += 1
            body = "\n".join(body_lines)
            if key and re.search(r"(?m)^\s*optional\s*=\s*true\s*$", body):
                keys.add(key)
            i = j
            continue
        if hdr in ("dependencies", "build-dependencies") or (
            hdr and hdr.startswith("target.") and hdr.endswith(".dependencies")
        ):
            j = i + 1
            while j < len(lines) and section_header(lines[j]) is None:
                m = re.match(
                    r'^([A-Za-z0-9_-]+)\s*=\s*\{([^}]*)\}\s*$',
                    lines[j].strip(),
                )
                if m and re.search(r"\boptional\s*=\s*true\b", m.group(2)):
                    keys.add(m.group(1))
                j += 1
            i = j
            continue
        i += 1
    return keys


def rewrite_legacy_dep_features(text: str) -> str:
    """Rewrite bare optional-dep names in features to dep:NAME.

    Cargo now requires optional deps to be activated via ``dep:NAME``.
    Legacy crates use ``derive = ["zeroize_derive"]`` or a feature named the
    same as the optional dep without ``dep:``.

    If a bare name is **also** a declared feature (e.g. flate2
    ``rust_backend = ["miniz_oxide"]`` where ``miniz_oxide = ["dep:…"]``),
    leave it as a feature activation — converting to ``dep:`` would skip the
    named feature flag that source ``cfg(feature = "miniz_oxide")`` needs.
    """
    opt = optional_dep_keys(text)
    if not opt:
        return text
    feat_names = local_feature_names(text)
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    in_features = False
    i = 0
    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)
        if hdr is not None:
            in_features = hdr == "features"
            out.append(line)
            i += 1
            continue
        if in_features:
            m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
            if m:
                fname = m.group(1)
                buf = m.group(2)
                j = i
                while "]" not in buf and j + 1 < len(lines):
                    j += 1
                    buf += "\n" + lines[j].rstrip("\n")
                before_br, _, rest = buf.partition("]")
                parts = re.findall(r'"([^"]+)"', before_br)
                kept: list[str] = []
                for p in parts:
                    if p.startswith("dep:") or "/" in p or "?" in p:
                        kept.append(p)
                    elif p in feat_names:
                        # Feature-to-feature activation (prefer over dep:)
                        kept.append(p)
                    elif p in opt:
                        kept.append(f"dep:{p}")
                    else:
                        kept.append(p)
                # Feature named same as optional dep with empty/no dep: → enable it
                if fname in opt and f"dep:{fname}" not in kept:
                    kept.insert(0, f"dep:{fname}")
                if not parts and fname in opt:
                    kept = [f"dep:{fname}"]
                if not kept and not parts:
                    out.append(f"{fname} = []\n")
                elif not kept:
                    out.append(f"{fname} = []\n")
                elif len(kept) == 1:
                    out.append(f'{fname} = ["{kept[0]}"]\n')
                else:
                    out.append(f"{fname} = [\n")
                    for k in kept:
                        out.append(f'    "{k}",\n')
                    out.append("]\n")
                i = j + 1
                continue
        out.append(line)
        i += 1
    return "".join(out)


def drop_orphan_optional_deps(text: str) -> str:
    """Drop optional deps not referenced via dep:KEY or pkg/feat in features.

    Modern cargo rejects optional deps that lack a feature activation path.
    ``dep:KEY`` is explicit; ``pkg/feat`` and ``pkg?/feat`` also enable optional
    dep ``pkg`` (tokio net → mio/os-poll).  Call rewrite_legacy_dep_features()
    first so legacy bare names become dep:.
    """
    dep_refs = set(re.findall(r'"dep:([A-Za-z0-9_-]+)"', text))
    # pkg/feat and pkg?/feat also activate optional dependency pkg
    dep_refs |= set(re.findall(r'"([A-Za-z0-9_-]+)\??/', text))

    lines = text.splitlines(keepends=True)
    out: list[str] = []
    i = 0

    def consume_table_block(start: int) -> tuple[list[str], int]:
        block = [lines[start]]
        j = start + 1
        while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
            block.append(lines[j])
            j += 1
        while j < len(lines) and lines[j].strip() == "":
            block.append(lines[j])
            j += 1
        return block, j

    def consume_section_body(start: int) -> tuple[list[str], int]:
        body: list[str] = []
        j = start
        while j < len(lines) and section_header(lines[j]) is None:
            body.append(lines[j])
            j += 1
        return body, j

    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)
        if hdr and is_dep_header(hdr) and dep_key_from_header(hdr):
            key = dep_key_from_header(hdr)
            assert key is not None
            block, i = consume_table_block(i)
            body = "".join(block)
            is_opt = re.search(r"(?m)^\s*optional\s*=\s*true\s*$", body) is not None
            if is_opt and key not in dep_refs:
                continue
            out.extend(block)
            continue
        if hdr in ("dependencies", "build-dependencies") or (
            hdr and hdr.startswith("target.") and hdr.endswith(".dependencies")
        ):
            out.append(line)
            body, i = consume_section_body(i + 1)
            for l2 in body:
                m = re.match(
                    r'^([A-Za-z0-9_-]+)\s*=\s*\{([^}]*)\}\s*$',
                    l2.strip(),
                )
                if m:
                    key = m.group(1)
                    blob = m.group(2)
                    is_opt = re.search(r"\boptional\s*=\s*true\b", blob)
                    if is_opt and key not in dep_refs:
                        continue
                out.append(l2)
            continue
        out.append(line)
        i += 1
    return "".join(out)


def main() -> int:
    if len(sys.argv) != 3:
        print(f"usage: {sys.argv[0]} Cargo.toml vendor-dir", file=sys.stderr)
        return 2
    toml_path = Path(sys.argv[1])
    vendor = Path(sys.argv[2])
    if not toml_path.is_file():
        print(f"missing {toml_path}", file=sys.stderr)
        return 1
    available = vendor_package_names(vendor)
    text = toml_path.read_text(encoding="utf-8")
    new = strip_toml(text, available)
    if new != text:
        toml_path.write_text(new, encoding="utf-8")
    return 0


def all_dep_keys(text: str) -> set[str]:
    """All dependency keys (optional and required) in this Cargo.toml."""
    keys: set[str] = set()
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        hdr = section_header(lines[i])
        if hdr and is_dep_header(hdr) and dep_key_from_header(hdr):
            key = dep_key_from_header(hdr)
            if key:
                keys.add(key)
            j = i + 1
            while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
                j += 1
            i = j
            continue
        if hdr in ("dependencies", "build-dependencies") or (
            hdr and hdr.startswith("target.") and hdr.endswith(".dependencies")
        ):
            j = i + 1
            while j < len(lines) and section_header(lines[j]) is None:
                m = re.match(r"^([A-Za-z0-9_-]+)\s*=", lines[j].strip())
                if m:
                    keys.add(m.group(1))
                j += 1
            i = j
            continue
        i += 1
    return keys


def local_feature_names(text: str) -> set[str]:
    """Feature names declared in this crate's [features] table."""
    names: set[str] = set()
    in_features = False
    for line in text.splitlines():
        hdr = section_header(line)
        if hdr is not None:
            in_features = hdr == "features"
            continue
        if in_features:
            m = re.match(r"^([A-Za-z0-9_-]+)\s*=", line)
            if m:
                names.add(m.group(1))
    return names


def scrub_dangling_dep_features(text: str) -> str:
    """Remove feature activations that no longer resolve.

    - ``dep:X`` when X is not a dependency
    - ``pkg/feat`` when pkg is not a dependency
    - bare ``name`` when name is neither a local feature nor a dependency
      (nix ``socket = ["memoffset"]`` after optional memoffset was dropped;
      schemars ``indexmap1 = ["indexmap"]``; futures-util ``compat``)
    """
    deps = all_dep_keys(text)
    ban: set[str] = set()
    for _ in range(8):
        feats = local_feature_names(text)
        lines = text.splitlines(keepends=True)
        out: list[str] = []
        newly: set[str] = set()
        in_features = False
        i = 0
        while i < len(lines):
            line = lines[i]
            hdr = section_header(line)
            if hdr is not None:
                in_features = hdr == "features"
                out.append(line)
                i += 1
                continue
            if in_features:
                m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
                if m:
                    fname = m.group(1)
                    buf = m.group(2)
                    j = i
                    while "]" not in buf and j + 1 < len(lines):
                        j += 1
                        buf += "\n" + lines[j].rstrip("\n")
                    before_br, _, _ = buf.partition("]")
                    parts = re.findall(r'"([^"]+)"', before_br)
                    kept: list[str] = []
                    for p in parts:
                        if p.startswith("dep:"):
                            key = p[4:].split("?")[0].split("/")[0]
                            if key not in deps or key in ban:
                                continue
                        elif p in ban:
                            continue
                        else:
                            # "serde?/alloc" or "hashbrown/serde" — pkg must exist
                            mfeat = re.match(
                                r"^([A-Za-z0-9_-]+)\??/(.+)$", p
                            )
                            if mfeat:
                                pkg = mfeat.group(1)
                                if pkg not in deps:
                                    continue
                            else:
                                # bare name: must be a local feature or a dep
                                base0 = p.split("?")[0]
                                if (
                                    base0 not in feats
                                    and base0 not in deps
                                    and base0 != fname
                                ):
                                    continue
                            base0 = p.split("?")[0].split("/")[0]
                            if base0 in ban:
                                continue
                        kept.append(p)
                    if not parts:
                        out.append(f"{fname} = []\n")
                    elif not kept:
                        # Keep empty feature flags (cfg(feature=...)) so dependents
                        # can still enable them; only drop truly dead names later
                        # when never referenced. default may become [].
                        out.append(f"{fname} = []\n")
                    elif len(kept) == 1:
                        out.append(f'{fname} = ["{kept[0]}"]\n')
                    else:
                        out.append(f"{fname} = [\n")
                        for k in kept:
                            out.append(f'    "{k}",\n')
                        out.append("]\n")
                    i = j + 1
                    continue
            out.append(line)
            i += 1
        text = "".join(out)
        if not newly:
            break
        ban |= newly
    return text


def drop_unsatisfiable_optional_deps(text: str, versions: dict[str, list[str]]) -> str:
    """Drop optional deps whose version is not present in the vendor dir.

    e.g. jiff wants jiff-tzdb ^0.1.6 but vendor only has 0.1.4.
    """
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    i = 0

    def ver_ok(pkg: str, req: str) -> bool:
        """True if some vendored version of pkg can satisfy req.

        Handles simple pins, ^/~, and comma ranges like ``>=0.5.9, <0.7``
        (hyper-util → socket2). Unparseable reqs with any vendor version keep
        the dep (monorepo lock already picked a concrete version).
        """
        vers = versions.get(pkg) or []
        if not vers:
            return False
        req = req.strip().strip('"').strip("'")
        if not req or req == "*":
            return True

        def parts(v: str) -> list[int]:
            outp: list[int] = []
            for x in re.split(r"[.\-+_]", v):
                if x.isdigit():
                    outp.append(int(x))
                else:
                    break
            return outp

        def pad(a: list[int], b: list[int]) -> tuple[tuple[int, ...], tuple[int, ...]]:
            n = max(len(a), len(b))
            return tuple(a + [0] * (n - len(a))), tuple(b + [0] * (n - len(b)))

        def one_constraint(have: list[int], token: str) -> bool:
            token = token.strip()
            if not token:
                return True
            m = re.match(r"^(>=|<=|>|<|=|\^|~)?\s*([0-9].*)$", token)
            if not m:
                return False
            # Cargo.toml bare "0.4.7" means ^0.4.7 (not exact).
            op = m.group(1) if m.group(1) else "^"
            ver_s = m.group(2)
            need = parts(ver_s)
            if not need:
                return False
            h, n = pad(have, need)
            if op == "=":
                return h[: len(n)] == n if len(h) >= len(n) else h == n[: len(h)]
            if op == ">=":
                return h >= n
            if op == ">":
                return h > n
            if op == "<=":
                return h <= n
            if op == "<":
                return h < n
            if op == "^":
                # caret: same major (or 0.Y for 0.x), >= need
                if need[0] == 0:
                    if len(need) >= 2:
                        return (
                            h[0] == 0
                            and (h[1] if len(h) > 1 else 0) == need[1]
                            and h >= n
                        )
                    return h[0] == 0 and h >= n
                return h[0] == need[0] and h >= n
            if op == "~":
                # tilde: same major.minor, patch >=
                if len(need) >= 2:
                    return (
                        h[0] == need[0]
                        and (h[1] if len(h) > 1 else 0) == need[1]
                        and h >= n
                    )
                return h[0] == need[0] and h >= n
            return False

        # Exact match (including +build metadata strings)
        if req in vers:
            return True
        bare = re.sub(r"^[\^~=\s]+", "", req)
        if bare in vers:
            return True

        tokens = [t.strip() for t in req.split(",") if t.strip()]
        parseable = any(
            re.match(r"^(>=|<=|>|<|=|\^|~)?\s*[0-9]", t) for t in tokens
        )
        if not parseable:
            return True

        for v in vers:
            have = parts(v)
            if not have:
                continue
            if all(one_constraint(have, t) for t in tokens):
                return True
        return False

    def consume_table_block(start: int) -> tuple[list[str], int]:
        block = [lines[start]]
        j = start + 1
        while j < len(lines) and section_header(lines[j]) is None and lines[j].strip() != "":
            block.append(lines[j])
            j += 1
        while j < len(lines) and lines[j].strip() == "":
            block.append(lines[j])
            j += 1
        return block, j

    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)
        if hdr and is_dep_header(hdr) and dep_key_from_header(hdr):
            key = dep_key_from_header(hdr)
            assert key is not None
            block, i = consume_table_block(i)
            body = "".join(block)
            is_opt = re.search(r"(?m)^\s*optional\s*=\s*true\s*$", body) is not None
            pkg_m = re.search(r'(?m)^\s*package\s*=\s*"([^"]+)"\s*$', body)
            pkg = pkg_m.group(1) if pkg_m else key
            ver_m = re.search(r'(?m)^\s*version\s*=\s*"([^"]+)"\s*$', body)
            if is_opt and ver_m and not ver_ok(pkg, ver_m.group(1)):
                continue
            out.extend(block)
            continue
        out.append(line)
        i += 1
    return "".join(out)


def vendor_versions(vendor: Path) -> dict[str, list[str]]:
    """package name → list of versions present under vendor/."""
    out: dict[str, list[str]] = {}
    if not vendor.is_dir():
        return out
    for child in vendor.iterdir():
        if not child.is_dir() and not child.is_symlink():
            continue
        # Non-greedy name: first "-<digit>" starts the version so
        # toml_parser-1.0.9+spec-1.1.0 → (toml_parser, 1.0.9+spec-1.1.0)
        # not (toml_parser-1.0.9+spec, 1.1.0).
        m = re.match(r"^(.*?)-([0-9].*)$", child.name)
        if m:
            out.setdefault(m.group(1), []).append(m.group(2))
    return out


def restore_implicit_optional_features(text: str) -> str:
    """Re-create Cargo's old implicit features for optional deps.

    With ``dep:`` syntax, optional dep ``serde_derive`` no longer creates a
    feature named ``serde_derive`` — only ``derive = ["dep:serde_derive"]``.
    Dependents still enable ``serde/serde_derive``.  For each remaining
    optional dep KEY with no feature of that name, add
    ``KEY = ["dep:KEY"]``.
    """
    opt = optional_dep_keys(text)
    if not opt:
        return text
    feat_names: set[str] = set()
    in_features = False
    has_features = False
    for line in text.splitlines():
        hdr = section_header(line)
        if hdr is not None:
            in_features = hdr == "features"
            if in_features:
                has_features = True
            continue
        if in_features:
            m = re.match(r"^([A-Za-z0-9_-]+)\s*=", line)
            if m:
                feat_names.add(m.group(1))
    missing = sorted(k for k in opt if k not in feat_names)
    if not missing:
        return text
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    inserted = False
    for line in lines:
        out.append(line)
        if not inserted and section_header(line) == "features":
            for key in missing:
                out.append(f'{key} = ["dep:{key}"]\n')
            inserted = True
    if not inserted:
        out.append("\n[features]\n")
        for key in missing:
            out.append(f'{key} = ["dep:{key}"]\n')
    return "".join(out)


# When rebuilt as a dependency, port EXTRA flags are not applied.
# FORCE_DEFAULT_FEATURES: merge into existing default= (gix-hash needs sha1).
# REPLACE_DEFAULT_FEATURES: replace default= entirely (drop tar/zip/generate).
FORCE_DEFAULT_FEATURES: dict[str, list[str]] = {
    "gix-hash": ["sha1"],
    "gix-hashtable": ["sha1"],
    # OsRng / thread_rng gated on getrandom; keep even when feature list emptied
    "rand": ["os_rng"],
    # monorepo uses future; default=[] requires at least sync|future
    "moka": ["future"],
    # Hub::client for sentry-panic
    "sentry-core": ["client"],
    # build.rs needs bindgen on OpenBSD (no pregenerated bindings path)
    "aws-lc-sys": ["bindgen"],
    # rustls enables aws-lc-rs with default-features=false + prebuilt-nasm only;
    # build.rs still requires aws-lc-sys|non-fips|fips on the crate itself.
    "aws-lc-rs": ["aws-lc-sys", "non-fips"],
    # lock enables optionals; empty default otherwise
    "signature": ["digest", "rand_core", "std"],
    "ed25519-dalek": ["std", "zeroize", "fast"],
    "cipher": ["block-padding", "std"],
    "curve25519-dalek": ["alloc", "precomputed-tables", "zeroize"],
}

# Merge listed names into named feature definitions (not just default=).
# Used when dependents set default-features=false and only enable a narrow flag.
FORCE_FEATURE_MERGE: dict[str, dict[str, list[str]]] = {
    # rustls: aws_lc_rs → aws-lc-rs/prebuilt-nasm (default-features=false)
    "aws-lc-rs": {
        "prebuilt-nasm": ["aws-lc-sys", "non-fips"],
    },
    # scrub_cross may drop signature/digest before signature gains implicit
    # optional feature names; keep the activation for ecdsa default=digest
    "ecdsa": {
        "digest": ["signature/digest"],
    },
}
REPLACE_DEFAULT_FEATURES: dict[str, list[str]] = {
    "gix-archive": [],
    "gix-pack": ["sha1", "pack-cache-lru-dynamic"],
}


def _rewrite_default_line(parts: list[str]) -> list[str]:
    if not parts:
        return ["default = []\n"]
    if len(parts) == 1:
        return [f'default = ["{parts[0]}"]\n']
    out = ["default = [\n"]
    for p in parts:
        out.append(f'    "{p}",\n')
    out.append("]\n")
    return out


def empty_feature_names(text: str) -> set[str]:
    """Feature names whose definition is an empty list ``F = []``.

    After optional-dep stripping these often remain as pure cfg flags.  Enabling
    them via ``default`` still turns on ``cfg(feature = "F")`` code paths that
    need the dropped deps (resvg raster-images, image avif, gix-archive tar).
    """
    empty: set[str] = set()
    in_features = False
    lines = text.splitlines()
    i = 0
    while i < len(lines):
        hdr = section_header(lines[i])
        if hdr is not None:
            in_features = hdr == "features"
            i += 1
            continue
        if in_features:
            m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", lines[i])
            if m:
                fname = m.group(1)
                buf = m.group(2)
                j = i
                while "]" not in buf and j + 1 < len(lines):
                    j += 1
                    buf += "\n" + lines[j]
                before_br, _, _ = buf.partition("]")
                parts = re.findall(r'"([^"]+)"', before_br)
                if not parts:
                    empty.add(fname)
                i = j + 1
                continue
        i += 1
    return empty


# Well-known empty-by-design pure cfg flags (belt-and-suspenders).  The
# stronger rule is: only scrub features that *became* empty after optional-dep
# stripping — never features that were already ``F = []`` in the upstream
# Cargo.toml (syn parsing/derive, lock_api atomic_usize, dasp_sample std, …).
SAFE_EMPTY_FEATURES = frozenset({
    "std",
    "alloc",
    "core",
    "rustc-dep-of-std",
    "use-std",
    "no_std",
    # syn / proc-macro ecosystem (empty cfg flags listed in default=)
    "derive",
    "parsing",
    "printing",
    "clone-impls",
    "proc-macro",
    "full",
    "visit",
    "visit-mut",
    "fold",
    "extra-traits",
    # lock_api / parking_lot
    "atomic_usize",
    "arc_lock",
    "nightly",
    "send_guard",
    # rand / rand_core: std enables getrandom for OsRng; after stripping
    # rand_core/getrandom the feature becomes [] but cfg is still required
    "getrandom",
})


def scrub_empty_from_default(
    text: str,
    keep_empty: frozenset[str] | set[str] | None = None,
) -> str:
    """Drop *became-empty* feature flags from ``default`` (and other lists).

    Pattern: optional deps stripped → feature becomes ``F = []`` → still listed
    in ``default`` → cargo enables F → source under ``cfg(feature = "F")``
    fails with unresolved imports.  Remove those empty names from activation
    lists (keep the empty feature definition for explicit ``--features F``).

    Keep (do not scrub from activation lists):
    - SAFE_EMPTY_FEATURES
    - keep_empty: features that were already empty in the *original* Cargo.toml
      (pure cfg flags).  Scrubbing those breaks syn default, lock_api
      atomic_usize, dasp_sample std, rustix alloc, etc.
    """
    protect = set(SAFE_EMPTY_FEATURES)
    if keep_empty:
        protect |= set(keep_empty)
    for _ in range(6):
        empty = empty_feature_names(text) - protect
        if not empty:
            break
        lines = text.splitlines(keepends=True)
        out: list[str] = []
        in_features = False
        changed = False
        i = 0
        while i < len(lines):
            line = lines[i]
            hdr = section_header(line)
            if hdr is not None:
                in_features = hdr == "features"
                out.append(line)
                i += 1
                continue
            if in_features:
                m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
                if m:
                    fname = m.group(1)
                    buf = m.group(2)
                    j = i
                    while "]" not in buf and j + 1 < len(lines):
                        j += 1
                        buf += "\n" + lines[j].rstrip("\n")
                    before_br, _, _ = buf.partition("]")
                    parts = re.findall(r'"([^"]+)"', before_br)
                    # Only scrub activations in default and compound features;
                    # leave empty feature definitions alone.
                    if parts:
                        kept = [p for p in parts if p not in empty]
                        if kept != parts:
                            changed = True
                        if not kept:
                            out.append(f"{fname} = []\n")
                        elif len(kept) == 1:
                            out.append(f'{fname} = ["{kept[0]}"]\n')
                        else:
                            out.append(f"{fname} = [\n")
                            for k in kept:
                                out.append(f'    "{k}",\n')
                            out.append("]\n")
                        i = j + 1
                        continue
            out.append(line)
            i += 1
        text = "".join(out)
        if not changed:
            break
    return text


def force_feature_merges(text: str, crate_name: str) -> str:
    """Merge required activations into named feature lists (not only default=)."""
    merges = FORCE_FEATURE_MERGE.get(crate_name)
    if not merges:
        return text
    feats = local_feature_names(text)
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    in_features = False
    i = 0
    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)
        if hdr is not None:
            in_features = hdr == "features"
            out.append(line)
            i += 1
            continue
        if in_features:
            m = re.match(r"^([A-Za-z0-9_-]+)\s*=\s*\[(.*)$", line.rstrip("\n"))
            if m and m.group(1) in merges:
                fname = m.group(1)
                buf = m.group(2)
                j = i
                while "]" not in buf and j + 1 < len(lines):
                    j += 1
                    buf += "\n" + lines[j].rstrip("\n")
                before_br, _, _ = buf.partition("]")
                final = re.findall(r'"([^"]+)"', before_br)
                for a in merges[fname]:
                    # Allow dep:NAME and pkg/feat activations (not only local feats)
                    if a not in final and (
                        a in feats or a.startswith("dep:") or "/" in a
                    ):
                        final.append(a)
                if not final:
                    out.append(f"{fname} = []\n")
                elif len(final) == 1:
                    out.append(f'{fname} = ["{final[0]}"]\n')
                else:
                    out.append(f"{fname} = [\n")
                    for k in final:
                        out.append(f'    "{k}",\n')
                    out.append("]\n")
                i = j + 1
                continue
        out.append(line)
        i += 1
    return "".join(out)


def force_default_features(
    text: str,
    crate_name: str,
    keep_empty: frozenset[str] | set[str] | None = None,
) -> str:
    """Adjust default= for crates rebuilt as deps without port EXTRA flags."""
    # Scrub only became-empty leftover dep flags (systemic).
    text = scrub_empty_from_default(text, keep_empty=keep_empty)
    text = force_feature_merges(text, crate_name)
    replace = REPLACE_DEFAULT_FEATURES.get(crate_name)
    merge = FORCE_DEFAULT_FEATURES.get(crate_name)
    if replace is None and not merge:
        return text
    feats = local_feature_names(text)
    if replace is not None:
        parts = [f for f in replace if f in feats]
    else:
        parts = None  # merge mode fills from existing + add
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    in_features = False
    saw_default = False
    i = 0
    while i < len(lines):
        line = lines[i]
        hdr = section_header(line)
        if hdr is not None:
            in_features = hdr == "features"
            out.append(line)
            i += 1
            continue
        if in_features:
            m = re.match(r"^default\s*=\s*\[(.*)$", line.rstrip("\n"))
            if m:
                saw_default = True
                buf = m.group(1)
                j = i
                while "]" not in buf and j + 1 < len(lines):
                    j += 1
                    buf += "\n" + lines[j].rstrip("\n")
                before_br, _, _ = buf.partition("]")
                if replace is not None:
                    final = parts if parts is not None else []
                else:
                    final = re.findall(r'"([^"]+)"', before_br)
                    for a in merge or []:
                        if a in feats and a not in final:
                            final.append(a)
                out.extend(_rewrite_default_line(final))
                i = j + 1
                continue
        out.append(line)
        i += 1
    # Crates with empty upstream default= (signature, …): insert merge list.
    if not saw_default and (merge or replace is not None):
        if replace is not None:
            final = parts if parts is not None else []
        else:
            final = [a for a in (merge or []) if a in feats]
        if final:
            insert = _rewrite_default_line(final)
            out2: list[str] = []
            placed = False
            for line in out:
                out2.append(line)
                if not placed and section_header(line) == "features":
                    out2.extend(insert)
                    placed = True
            if not placed:
                out2.append("\n[features]\n")
                out2.extend(insert)
            out = out2
    return "".join(out)


def crate_name_from_vendor_dir(name: str) -> str:
    m = re.match(r"^(.*?)-([0-9].*)$", name)
    return m.group(1) if m else name


def main_all(vendor: Path) -> int:
    """Strip every crate in vendor, scrub cross-features, drop orphan optionals."""
    available = vendor_package_names(vendor)
    versions = vendor_versions(vendor)
    # Features that were already empty in upstream Cargo.toml (pure cfg flags).
    # Must not be scrubbed from default= after optional-dep stripping.
    orig_empty: dict[str, set[str]] = {}
    for child in sorted(vendor.iterdir()):
        if not child.is_dir() and not child.is_symlink():
            continue
        toml = child / "Cargo.toml"
        if not toml.is_file():
            continue
        text = toml.read_text(encoding="utf-8")
        orig_empty[child.name] = empty_feature_names(text)
        new = strip_toml(text, available)
        new = drop_unsatisfiable_optional_deps(new, versions)
        # drop_unsatisfiable does not scrub features; clean bare/dep refs now
        new = scrub_dangling_dep_features(new)
        if new != text:
            toml.write_text(new, encoding="utf-8")

    def pass_restore_implicit() -> None:
        # Materialize optional-dep feature names (digest, serde, …) on *all*
        # crates before scrub_cross so pkg/feat activations (signature/digest)
        # are not dropped as "unknown on pkg".
        for child in sorted(vendor.iterdir()):
            if not child.is_dir() and not child.is_symlink():
                continue
            toml = child / "Cargo.toml"
            if not toml.is_file():
                continue
            text = toml.read_text(encoding="utf-8")
            new = restore_implicit_optional_features(text)
            new = rewrite_legacy_dep_features(new)
            if new != text:
                toml.write_text(new, encoding="utf-8")

    def pass_rewrite() -> None:
        feat_map = dep_feature_map(vendor)
        for child in sorted(vendor.iterdir()):
            if not child.is_dir() and not child.is_symlink():
                continue
            toml = child / "Cargo.toml"
            if not toml.is_file():
                continue
            text = toml.read_text(encoding="utf-8")
            aliases = dep_key_aliases(text)
            new = scrub_cross_features(text, feat_map, aliases)
            # Restore KEY=["dep:KEY"] *before* rewrite so rust_backend =
            # ["miniz_oxide"] keeps the feature name (cfg(feature=...)) instead
            # of being rewritten to bare dep:miniz_oxide.
            new = restore_implicit_optional_features(new)
            new = rewrite_legacy_dep_features(new)
            new = drop_orphan_optional_deps(new)
            new = scrub_dangling_dep_features(new)
            new = restore_implicit_optional_features(new)
            cname = crate_name_from_vendor_dir(child.name)
            keep = orig_empty.get(child.name, set())
            new = force_default_features(new, cname, keep_empty=keep)
            if new != text:
                toml.write_text(new, encoding="utf-8")

    # Pass 2: restore implicit optional feature names globally, then scrub.
    # Pass 3: scrub; rewrite dep:; drop orphans; clear dangling; force defaults.
    pass_restore_implicit()
    pass_rewrite()
    pass_rewrite()
    for child in sorted(vendor.iterdir()):
        if not child.is_dir() and not child.is_symlink():
            continue
        refresh_cargo_checksum(child)
    return 0


if __name__ == "__main__":
    if len(sys.argv) == 3 and sys.argv[1] == "--all":
        raise SystemExit(main_all(Path(sys.argv[2])))
    raise SystemExit(main())
