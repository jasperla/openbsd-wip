# $OpenBSD$

# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =		sparc64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		SpaceXAI terminal AI coding agent (grok)
PKGNAME =		grok-build-1.0.45

# Empty DISTNAME makes GH_DISTFILE "-….tar.gz".
DIST_TUPLE =		github xai-org grok-build 2bdd1d6a6369de0e8c68132ea4539e9abd9e14a8 .

# Offline cargo cannot fetch git deps.
SITES.nucleo =		https://github.com/helix-editor/nucleo/archive/
DISTFILES.nucleo =	nucleo-5b74652{5b74652}.tar.gz
SITES.asyncopenai =	https://github.com/our-forks/async-openai/archive/
DISTFILES.asyncopenai =	async-openai-95b52eb{95b52ebdedf42143083cf3d6f0e0be7c84e9c808}.tar.gz

CATEGORIES =		devel

HOMEPAGE =		https://x.ai/cli
MAINTAINER =		Todd T. Fries <todd@fries.net>

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m crypto ssl util z
WANTLIB +=		git2 llhttp onig pcre2-8 sqlite3 ssh2 zstd

# cargo.port.mk does not map LDFLAGS. xai-grok-tools build.rs needs -lzstd.
MODCARGO_RUSTFLAGS +=	-C link-arg=-L${LOCALBASE}/lib

MODULES =		devel/cargo

# jemalloc does not build on OpenBSD.
MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =		sandbox-enforce

MODCARGO_BUILD_ARGS +=	--locked -p xai-grok-pager-bin
MODCARGO_TEST_ARGS +=	--locked -p xai-grok-pager-bin

MODCARGO_INSTALL =	No

# In-tree protoc is dotslash.
BUILD_DEPENDS +=	devel/protobuf
LIB_DEPENDS +=		archivers/zstd \
			databases/sqlite3 \
			devel/libgit2/libgit2 \
			devel/pcre2 \
			security/libssh2 \
			textproc/oniguruma \
			www/llhttp
# rg is not embedded.
RUN_DEPENDS +=		textproc/ripgrep

# codegen-units=1 is peak RAM; profile units stay 256.
GROK_LOW_MEM ?=		Yes
.if ${GROK_LOW_MEM:L} == "yes"
MAKE_JOBS =		1
DPB_PROPERTIES +=	lonesome
MAKE_ENV +=		CARGO_INCREMENTAL=0 \
			CARGO_PROFILE_RELEASE_CODEGEN_UNITS=256 \
			CARGO_PROFILE_RELEASE_LTO=thin \
			CARGO_PROFILE_RELEASE_DEBUG=0 \
			CARGO_PROFILE_RELEASE_STRIP=symbols
MODCARGO_RUSTFLAGS +=	-Ccodegen-units=1
.endif

# libgit2-sys 0.18 ignores LIBGIT2_SYS_USE_PKG_CONFIG when the probe fails.
MAKE_ENV +=		PROTOC=${LOCALBASE}/bin/protoc \
			LIBGIT2_NO_VENDOR=1

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/vendor
	${INSTALL_DATA_DIR} ${WRKSRC}/crates/codegen/xai-grok-sandbox/examples
	@nucleo=`echo ${WRKDIR}/nucleo-5b74652*`; \
	  if [ ! -d "$$nucleo" ]; then \
		echo "nucleo distfile not extracted under ${WRKDIR}" >&2; \
		exit 1; \
	  fi; \
	  mv "$$nucleo" ${WRKSRC}/vendor/nucleo
	# Nested workspace confuses cargo when used as a path dep of the root.
	sed -i '/^\[workspace\]/,/^$$/d' ${WRKSRC}/vendor/nucleo/Cargo.toml
	@ao=`echo ${WRKDIR}/async-openai-95b52eb*`; \
	  if [ ! -d "$$ao" ]; then \
		echo "async-openai distfile not extracted under ${WRKDIR}" >&2; \
		exit 1; \
	  fi; \
	  mv "$$ao" ${WRKSRC}/vendor/async-openai
	# Path dep is the crate dir; drop workspace-relative rust-version.
	sed -i 's/rust-version = { workspace = true }/rust-version = "1.75"/' \
		${WRKSRC}/vendor/async-openai/async-openai/Cargo.toml \
		${WRKSRC}/vendor/async-openai/async-openai-macros/Cargo.toml
	cp ${FILESDIR}/openbsd.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/src/openbsd.rs
	cp ${FILESDIR}/openbsd_sandbox_smoke.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/examples/openbsd_sandbox_smoke.rs

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/xai-grok-pager \
		${PREFIX}/bin/grok
	cd ${PREFIX}/bin && ln grok agent

.include "crates.inc"

.include <bsd.port.mk>
