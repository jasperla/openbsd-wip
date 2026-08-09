#!/bin/sh
# Copy prebuilt rlib/rmeta/fingerprints from rust-crate-* packages into CARGO_TARGET_DIR.
# Usage: seed-target.sh CARGO_TARGET_DIR [LOCALBASE]
set -e
TDIR="${1:?cargo target dir}"
LOCALBASE="${2:-/usr/local}"
ARCH=$(uname -m)
LIBROOT="$LOCALBASE/lib/rust-crates/$ARCH"
mkdir -p "$TDIR/release/deps" "$TDIR/release/.fingerprint"
n=0
if [ ! -d "$LIBROOT" ]; then
	echo "seed-target: no $LIBROOT (install rust-crate-* packages first)" >&2
	exit 0
fi
for d in "$LIBROOT"/*; do
	# Packages install lib/rust-crates/<arch>/<name>-<ver>/{deps,lib*.rlib|so}
	if [ -d "$d/deps" ]; then
		cp -Rp "$d/deps/." "$TDIR/release/deps/" 2>/dev/null || true
		cp -f "$d"/lib*.rlib "$TDIR/release/deps/" 2>/dev/null || true
		cp -f "$d"/lib*.so "$TDIR/release/deps/" 2>/dev/null || true
		cp -f "$d"/lib*.rmeta "$TDIR/release/deps/" 2>/dev/null || true
		n=$((n + 1))
	elif [ -d "$d/release/deps" ]; then
		cp -Rp "$d/release/deps/." "$TDIR/release/deps/" 2>/dev/null || true
		n=$((n + 1))
	fi
done
echo "seed-target: merged artifacts from $n crate packages into $TDIR"
exit 0
