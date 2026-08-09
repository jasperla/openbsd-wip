#!/bin/sh
# Prepare CARGO_TARGET_DIR for the rust-crate-* consumer.
# Usage: seed-target.sh CARGO_TARGET_DIR [LOCALBASE]
#
# IMPORTANT: do NOT copy package lib*.rlib into release/deps as unhashed
# names (libfoo.rlib). cargo/rustc also emit libfoo-<metadata>.rlib; having
# both triggers E0460 "found possibly newer version of crate X which Y
# depends on" (seen: shlex vs cc while compiling ring build.rs).
#
# Prebuilt reuse is handled by rustc-prebuilt.sh (RUSTC_WRAPPER), which copies
# from LOCALBASE/lib/rust-crates/<arch>/<name>-<ver>/ with cargo's extra-filename.
# This script only ensures the target tree exists and is writable.
set -e
TDIR="${1:?cargo target dir}"
LOCALBASE="${2:-/usr/local}"
ARCH=$(uname -m)
LIBROOT="$LOCALBASE/lib/rust-crates/$ARCH"
mkdir -p "$TDIR/release/deps" "$TDIR/release/.fingerprint"
n=0
if [ -d "$LIBROOT" ]; then
	for d in "$LIBROOT"/*; do
		[ -d "$d" ] || continue
		# Count packages that have a usable artifact (for logging only).
		for f in "$d"/lib*.rlib "$d"/lib*.so "$d"/lib*.rmeta; do
			if [ -f "$f" ]; then
				n=$((n + 1))
				break
			fi
		done
	done
	echo "seed-target: ready (rustc-prebuilt will use $n packages under $LIBROOT); not merging unhashed rlibs into $TDIR"
else
	echo "seed-target: no $LIBROOT (install rust-crate-* packages first)" >&2
fi
chmod -R u+w "$TDIR" 2>/dev/null || true
exit 0
