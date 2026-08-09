#!/bin/sh
# RUSTC_WRAPPER: reuse prebuilt rlib when compiling a vendored crate unit.
# cargo invokes: wrapper /path/to/rustc [args...]
set -e
REAL_RUSTC="${1:?}"
shift
ARCH=$(uname -m)
LIBROOT="${LOCALBASE:-/usr/local}/lib/rust-crates/$ARCH"
# Optional chain to sccache after miss
SCCACHE_WRAP="${SCCACHE_RUSTC_WRAPPER:-/obfarm0.a/todd/bin/sccache-rustc}"

crate_name=""
out_dir=""
extra=""
src_hint=""
prev=""
for a in "$@"; do
	case "$prev" in
	--crate-name) crate_name=$a ;;
	--out-dir) out_dir=$a ;;
	esac
	case "$a" in
	extra-filename=*) extra=${a#extra-filename=} ;;
	*/modcargo-crates/*) src_hint=$a ;;
	esac
	prev=$a
done

nv=""
case "$src_hint" in
*/modcargo-crates/*)
	rest=${src_hint#*/modcargo-crates/}
	nv=${rest%%/*}
	;;
esac

if [ -n "$nv" ] && [ -n "$crate_name" ] && [ -n "$out_dir" ]; then
	pre="$LIBROOT/$nv"
	art=""
	for ext in rlib so rmeta; do
		if [ -f "$pre/lib${crate_name}.$ext" ]; then
			art="$pre/lib${crate_name}.$ext"
			break
		fi
	done
	if [ -n "$art" ]; then
		mkdir -p "$out_dir"
		ext=${art##*.}
		if [ -n "$extra" ]; then
			cp -f "$art" "$out_dir/lib${crate_name}${extra}.$ext"
			[ -f "$pre/lib${crate_name}.rmeta" ] && \
				cp -f "$pre/lib${crate_name}.rmeta" "$out_dir/lib${crate_name}${extra}.rmeta" || true
		else
			cp -f "$art" "$out_dir/lib${crate_name}.$ext"
			[ -f "$pre/lib${crate_name}.rmeta" ] && \
				cp -f "$pre/lib${crate_name}.rmeta" "$out_dir/lib${crate_name}.rmeta" || true
		fi
		if [ -d "$pre/deps" ]; then
			cp -f "$pre/deps/"lib${crate_name}-* "$out_dir/" 2>/dev/null || true
		fi
		exit 0
	fi
fi

if [ -x "$SCCACHE_WRAP" ]; then
	exec "$SCCACHE_WRAP" "$REAL_RUSTC" "$@"
fi
exec "$REAL_RUSTC" "$@"
