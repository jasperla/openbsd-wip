# $OpenBSD$

# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =		sparc64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		SpaceXAI terminal AI coding agent (grok)

# Upstream publishes periodic monorepo dumps (not a one-shot dump).
# DIST_TUPLE (not bare GH_* without DISTNAME): empty DISTNAME made GH_DISTFILE
# expand to "-….tar.gz".
DIST_TUPLE =		github xai-org grok-build b189869b7755d2b482969acf6c92da3ecfeffd36 .
# Nucleo is a git dep upstream; fetch the pinned rev as a normal distfile and
# path-patch Cargo.toml (offline cargo cannot fetch git).
SITES.nucleo =		https://github.com/helix-editor/nucleo/archive/
DISTFILES.nucleo =	nucleo-5b74652{5b74652}.tar.gz
# Stable package name (avoid upstream "alpha" noise).
PKGNAME =		grok-build-0.1.220
# pl2: drop multi-MB files/vendor; patch crates via modcargo + nucleo distfile
REVISION =		2

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
# Cargo.lock from FILESDIR matches OpenBSD patches; --locked is safe after that.
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

# ---------------------------------------------------------------------------
# Resource limits for cargo/rustc (single knob for dpb / fat builders)
# ---------------------------------------------------------------------------
# Default Yes: serialize cargo jobs and tighten release codegen so the port
# finishes on modest RAM instead of OOM/thrashing. This is *not* a typical
# ports default; large bulk builders should turn it off:
#
#   make GROK_LOW_MEM=No
#   # or in /etc/mk.conf / dpb properties for this package only:
#   #   GROK_LOW_MEM=No
#
# When Yes:
#   - MAKE_JOBS=1  -> cargo.port.mk sets CARGO_BUILD_JOBS=${MAKE_JOBS}
#   - DPB lonesome -> avoid packing other bulk jobs beside this one
#   - release profile: 1 CGU, thin LTO, no debuginfo, strip, no incremental
# When No: leave MAKE_JOBS alone (ports/dpb parallelism) and skip profile caps.
GROK_LOW_MEM ?=		Yes
.if ${GROK_LOW_MEM:L} == "yes"
MAKE_JOBS =		1
DPB_PROPERTIES +=	lonesome
MAKE_ENV +=		CARGO_INCREMENTAL=0 \
			CARGO_PROFILE_RELEASE_CODEGEN_UNITS=1 \
			CARGO_PROFILE_RELEASE_LTO=thin \
			CARGO_PROFILE_RELEASE_DEBUG=0 \
			CARGO_PROFILE_RELEASE_STRIP=symbols
MODCARGO_RUSTFLAGS +=	-Ccodegen-units=1
.endif

# LIBGIT2_NO_VENDOR: libgit2-sys 0.18 ignores LIBGIT2_SYS_USE_PKG_CONFIG alone
# when probe fails; force system libgit2 (see cargo.port.mk libgit2-sys hook).
MAKE_ENV +=		PROTOC=${LOCALBASE}/bin/protoc \
			LIBGIT2_NO_VENDOR=1

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# post-extract runs before MODCARGO moves crates into modcargo-crates/.
# - path-dep nucleo from DISTFILES.nucleo (strip nested [workspace])
# - OpenBSD sandbox sources (first-party; not yet upstream)
# - Cargo.lock with registry mid/nono/pprof (+ path nucleo)
post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/vendor
	${INSTALL_DATA_DIR} ${WRKSRC}/crates/codegen/xai-grok-sandbox/examples
	# github archive dir is nucleo-<fullsha>
	@nucleo=`echo ${WRKDIR}/nucleo-5b74652*`; \
	  if [ ! -d "$$nucleo" ]; then \
		echo "nucleo distfile not extracted under ${WRKDIR}" >&2; \
		exit 1; \
	  fi; \
	  mv "$$nucleo" ${WRKSRC}/vendor/nucleo
	# Nested workspace confuses cargo when used as a path dep of the root.
	sed -i '/^\[workspace\]/,/^$$/d' ${WRKSRC}/vendor/nucleo/Cargo.toml
	cp ${FILESDIR}/openbsd.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/src/openbsd.rs
	cp ${FILESDIR}/openbsd_sandbox_smoke.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/examples/openbsd_sandbox_smoke.rs
	cp ${FILESDIR}/Cargo.lock ${WRKSRC}/Cargo.lock

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/xai-grok-pager \
		${PREFIX}/bin/grok
	# Same composition-root binary under both names.
	cd ${PREFIX}/bin && ln grok agent

.include "crates.inc"

.include <bsd.port.mk>
