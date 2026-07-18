# $OpenBSD$

# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =		sparc64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		SpaceXAI terminal AI coding agent (grok)

# Upstream OSS tree; OpenBSD support is local patches until merged upstream.
# Binary crate version: 0.1.220-alpha.4 at this commit.
# DIST_TUPLE (not bare GH_* without DISTNAME): empty DISTNAME made GH_DISTFILE
# expand to "-b189869b{...}.tar.gz".
DIST_TUPLE =		github xai-org grok-build b189869b7755d2b482969acf6c92da3ecfeffd36 .
# Stable package name (avoid upstream "alpha" noise).
PKGNAME =		grok-build-0.1.220
# pl1: kqueue stale-kevent panic fix + OpenBSD fsnotify per-dir defaults.
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://x.ai/cli
MAINTAINER =		Todd T. Fries <todd@fries.net>

# Apache-2.0
PERMIT_PACKAGE =	Yes

# From ldd of release binary (plus MODCARGO_WANTLIB = c pthread c++abi).
WANTLIB +=		${MODCARGO_WANTLIB} m crypto ssl util z
WANTLIB +=		git2 llhttp onig pcre2-8 sqlite3 ssh2 zstd

MODULES =		devel/cargo

# jemalloc (tikv-jemalloc-sys) does not build cleanly on OpenBSD.
# Keep sandbox enforcement; ship the composition-root binary as grok + agent.
MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =		sandbox-enforce

# Build only the composition-root binary crate.
# Cargo.lock from FILESDIR matches OpenBSD path patches; --locked is safe after that.
MODCARGO_BUILD_ARGS +=	--locked -p xai-grok-pager-bin
MODCARGO_TEST_ARGS +=	--locked -p xai-grok-pager-bin

# Do not cargo-install the whole workspace.
MODCARGO_INSTALL =	No

# System protoc preferred over the in-tree bin/protoc (dotslash; no OpenBSD provider).
BUILD_DEPENDS +=	devel/protobuf
# Shared libs used by the release binary (see ldd).
LIB_DEPENDS +=		archivers/zstd \
			databases/sqlite3 \
			devel/libgit2/libgit2 \
			devel/pcre2 \
			security/libssh2 \
			textproc/oniguruma \
			www/llhttp
# Runtime: build.rs does not embed rg on OpenBSD; tools fall back to PATH.
RUN_DEPENDS +=		textproc/ripgrep

# --- Low-memory Rust/cargo build (this is a large workspace; rustc+LLVM peak hard) ---
# Not the usual ports default, but without these the build OOMs or thrashes swap
# (rustc/opt cgu.N can sit at multi-GB virt / hundreds of MB RSS each).
# Trade-off: slower wall time for lower peak RAM. Raise MAKE_JOBS if you have RAM:
#   make MAKE_JOBS=2   or   make MAKE_JOBS=4
# cargo.port.mk maps MAKE_JOBS -> CARGO_BUILD_JOBS.
MAKE_JOBS =		1
# Prefer not scheduling other bulk packages alongside this build.
DPB_PROPERTIES +=	lonesome

# Profile knobs via env (no Cargo.toml patch). Equivalent to:
#   [profile.release]
#   codegen-units = 1
#   lto = "thin"   # avoid fat LTO (common OOM during release link)
#   debug = 0
#   strip = true
# One-shot port builds do not benefit from incremental caches.
MAKE_ENV +=		CARGO_INCREMENTAL=0 \
			CARGO_PROFILE_RELEASE_CODEGEN_UNITS=1 \
			CARGO_PROFILE_RELEASE_LTO=thin \
			CARGO_PROFILE_RELEASE_DEBUG=0 \
			CARGO_PROFILE_RELEASE_STRIP=symbols
# Belt-and-suspenders: also force single CGU on the rustc command line.
MODCARGO_RUSTFLAGS +=	-Ccodegen-units=1

# Large workspace: keep WRKOBJDIR on a big disk; pass system protoc.
# LIBGIT2_NO_VENDOR: libgit2-sys 0.18 ignores LIBGIT2_SYS_USE_PKG_CONFIG alone
# when probe fails; force system libgit2 (see cargo.port.mk libgit2-sys hook).
MAKE_ENV +=		PROTOC=${LOCALBASE}/bin/protoc \
			LIBGIT2_NO_VENDOR=1

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# OpenBSD-specific sources and dependency patches (mid/nono/pprof + sandbox).
# Copied after extract so patches/ still apply against upstream trees.
# files/Cargo.lock is the lock from the OpenBSD-patched working tree.
post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/vendor
	${INSTALL_DATA_DIR} ${WRKSRC}/crates/codegen/xai-grok-sandbox/examples
	cp -R ${FILESDIR}/vendor/mid ${WRKSRC}/vendor/
	cp -R ${FILESDIR}/vendor/nono ${WRKSRC}/vendor/
	cp -R ${FILESDIR}/vendor/nucleo ${WRKSRC}/vendor/
	cp -R ${FILESDIR}/vendor/pprof ${WRKSRC}/vendor/
	cp ${FILESDIR}/openbsd.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/src/openbsd.rs
	cp ${FILESDIR}/openbsd_sandbox_smoke.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/examples/openbsd_sandbox_smoke.rs
	cp ${FILESDIR}/Cargo.lock ${WRKSRC}/Cargo.lock

# After MODCARGO has moved crates into modcargo-crates/ (post-extract finalize)
# and before cargo-generate-vendor (MODCARGO post-patch), install the hardened
# kqueue sources in place. Do NOT use [patch.crates-io] path= for kqueue: that
# forces cargo to rewrite Cargo.lock and breaks MODCARGO_BUILD_ARGS+=--locked.
post-patch:
	@if [ ! -f ${WRKSRC}/modcargo-crates/kqueue-1.1.1/src/lib.rs ]; then \
		echo "modcargo-crates/kqueue-1.1.1 missing; extract/modcargo order broke" >&2; \
		exit 1; \
	fi
	cp ${FILESDIR}/vendor/kqueue/src/lib.rs \
		${WRKSRC}/modcargo-crates/kqueue-1.1.1/src/lib.rs
	cp ${FILESDIR}/vendor/kqueue/OPENBSD-PATCH.md \
		${WRKSRC}/modcargo-crates/kqueue-1.1.1/OPENBSD-PATCH.md

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/xai-grok-pager \
		${PREFIX}/bin/grok
	# Same composition-root binary under both names (upstream ships grok; agent is the common CLI alias).
	cd ${PREFIX}/bin && ln grok agent

.include "crates.inc"

.include <bsd.port.mk>
