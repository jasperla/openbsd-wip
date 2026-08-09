#!/bin/sh
# RUSTC_WRAPPER for grok-build-test consumer.
# cargo invokes: wrapper /path/to/rustc [args...]
#
# Do NOT copy package rlibs into the consumer target dir. Each rust-crate-*
# port compiles in isolation, so SVH/metadata hashes disagree across packages
# (E0460: "found possibly newer version of crate shlex which cc depends on"
# when linking ring build.rs against a prebuilt libcc + separately built shlex).
# Consumer builds from modcargo-crates sources; packages still prove each
# crate builds and supply share/modcargo-crates + LIBROOT for inventory.
set -e
REAL_RUSTC="${1:?}"
shift
SCCACHE_WRAP="${SCCACHE_RUSTC_WRAPPER:-/obfarm0.a/todd/bin/sccache-rustc}"
# sccache: todd server cannot write _pbuild pobj; wrapper bypasses for _pbuild.
if [ -z "${SCCACHE_DISABLE:-}" ] && [ -x "$SCCACHE_WRAP" ]; then
	exec "$SCCACHE_WRAP" "$REAL_RUSTC" "$@"
fi
exec "$REAL_RUSTC" "$@"
