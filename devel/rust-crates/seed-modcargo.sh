#!/bin/sh
# Seed modcargo-crates: tar extract + cargo-generate-vendor (.cargo-checksum.json).
# Usage: seed-modcargo.sh DEST [LOCALBASE] [DISTDIR] [CRATE_LIST]
set -e
DEST="${1:?}"
LOCALBASE="${2:-/usr/local}"
DISTDIR="${3:-/usr/ports/distfiles}"
LIST="${4:-}"
CGV="$LOCALBASE/bin/cargo-generate-vendor"
NPROC="${SEED_NPROC:-8}"
SRC_DIST="$DISTDIR/cargo"
SRC_PKG="$LOCALBASE/share/modcargo-crates"
[ -x "$CGV" ] || { echo "need cargo-generate-vendor" >&2; exit 1; }
mkdir -p "$DEST" /obfarm0.a/tmp 2>/dev/null || mkdir -p "$DEST"
TMP=$(mktemp -d "${TMPDIR:-/tmp}/seed.XXXXXX")
: >"$TMP/ok"; : >"$TMP/fail"; : >"$TMP/errlog"
seed_one() {
	base="$1"
	out="$DEST/$base"
	if [ -f "$out/Cargo.toml" ] && [ -f "$out/.cargo-checksum.json" ]; then
		echo ok >>"$TMP/ok"; return 0
	fi
	tgz=""
	[ -f "$SRC_PKG/${base}.tar.gz" ] && tgz="$SRC_PKG/${base}.tar.gz"
	[ -z "$tgz" ] && [ -d "$SRC_PKG/$base" ] && {
		# already installed as directory tree from package
		if [ -f "$SRC_PKG/$base/Cargo.toml" ]; then
			rm -rf "$out"
			cp -a "$SRC_PKG/$base" "$out"
			[ -f "$out/.cargo-checksum.json" ] || \
				"$CGV" "$SRC_DIST/${base}.tar.gz" "$out" 2>>"$TMP/errlog" || true
			[ -f "$out/Cargo.toml" ] && { echo ok >>"$TMP/ok"; return 0; }
		fi
	}
	[ -z "$tgz" ] && [ -f "$SRC_DIST/${base}.tar.gz" ] && tgz="$SRC_DIST/${base}.tar.gz"
	if [ -z "$tgz" ]; then echo "missing $base" >>"$TMP/fail"; return 1; fi
	rm -rf "$out"
	tar xzf "$tgz" -C "$DEST" 2>>"$TMP/errlog" || { echo "tar-fail $base" >>"$TMP/fail"; return 1; }
	[ -f "$out/Cargo.toml" ] || { echo "no-toml $base" >>"$TMP/fail"; return 1; }
	"$CGV" "$tgz" "$out" 2>>"$TMP/errlog" || { echo "cgv-fail $base" >>"$TMP/fail"; return 1; }
	[ -f "$out/.cargo-checksum.json" ] || { echo "no-cksum $base" >>"$TMP/fail"; return 1; }
	echo ok >>"$TMP/ok"
}
if [ -n "$LIST" ] && [ -f "$LIST" ]; then
	grep -v '^#' "$LIST" | grep -v '^$' >"$TMP/list"
else
	echo "need crate-list" >&2; exit 1
fi
i=0
while read -r base; do
	[ -n "$base" ] || continue
	seed_one "$base" &
	i=$((i + 1))
	[ "$i" -ge "$NPROC" ] && { wait || true; i=0; }
done <"$TMP/list"
wait || true
ok=$(wc -l <"$TMP/ok" | tr -d ' ')
fail=$(wc -l <"$TMP/fail" | tr -d ' ')
echo "seed-modcargo: ready $ok ok, ${fail:-0} fail"
[ "$ok" -ge 1000 ] || exit 1
exit 0
