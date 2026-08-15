# $OpenBSD$

# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =		sparc64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

# ---------------------------------------------------------------------------
# FLAVORS
# ---------------------------------------------------------------------------
# default (no flavor): xai-org dump + OpenBSD first-party work from the
#   toddfries branches voice-aucat and minimal-build (port patches +
#   FILESDIR). Those branches stay separate in git; they are not merged
#   into a dump for this flavor.
# memeic: toddfries openbsd/memeic-typed-memory dump only (no voice-aucat
#   or minimal-build overlays).
#   env FLAVOR=memeic make package
# Default PKGNAME/dist/crates.inc path unchanged when FLAVOR is empty.
# memeic uses a separate dump and an explicit FULLPKGNAME. pkg/PLIST
# @conflict/@pkgpath make grok-build{,-memeic} and grok-build-test{,-memeic}
# replace each other on upgrade instead of colliding.
FLAVORS =		memeic
FLAVOR ?=

COMMENT =		SpaceXAI terminal AI coding agent (grok)

# Upstream publishes periodic monorepo dumps (not a one-shot dump).
# DIST_TUPLE (not bare GH_* without DISTNAME): empty DISTNAME made GH_DISTFILE
# expand to "-….tar.gz".
#
# Dump pins — always name BOTH the dump commit AND its xai-org base.
#
# Default flavor dump: pure xai-org monorepo (OpenBSD bits via patches).
#   xai-org commit: d6a22a1aed70b58d30a0f82a1a2a76ce1301631e
#   plus port patches from branches voice-aucat + minimal-build
#   product PKGNAME: grok-build-1.0.4 (tip d6a22a1)
#
# memeic flavor dump: toddfries openbsd/memeic-typed-memory ONLY.
#   toddfries dump: 8bfc82e54129dfbcae0ba5a907d0104cdc7604ab
#   xai-org base:   d6a22a1aed70b58d30a0f82a1a2a76ce1301631e
#   (typed memory / connector commits; product 1.0.4)
#   FULLPKGNAME: grok-build-memeic-1.0.4
#   Do not overlay voice-aucat or minimal-build on this flavor.
#
# Keep memeic's xai-org base identical to stock whenever possible.
# Both monorepo dumps live in distinfo; the inactive one is SUPDISTFILES so
# checksum does not flag it as "extra" for the other flavor.
_GROK_DUMP_STOCK =xai-org-grok-build-d6a22a1aed70b58d30a0f82a1a2a76ce1301631e.tar.gz
_GROK_DUMP_MEMEIC =toddfries-grok-build-8bfc82e54129dfbcae0ba5a907d0104cdc7604ab.tar.gz

.if ${FLAVOR:L:Mmemeic}
DIST_TUPLE =		github toddfries grok-build 8bfc82e54129dfbcae0ba5a907d0104cdc7604ab .
# xai-org base for this dump: d6a22a1 (matches stock pin).
# PKGNAME without "memeic" so FLAVOR_EXT does not become -memeic-memeic.
PKGNAME =		grok-build-1.0.4
FULLPKGNAME =		grok-build-memeic-1.0.4
COMMENT =		SpaceXAI grok with experimental MemEIC-style typed memory
SUPDISTFILES +=		${_GROK_DUMP_STOCK}
.else
DIST_TUPLE =		github xai-org grok-build d6a22a1aed70b58d30a0f82a1a2a76ce1301631e .
# Binary crate version at this dump: 1.0.4 (xai-grok-pager-bin; dump d6a22a1).
PKGNAME =		grok-build-1.0.4
SUPDISTFILES +=		${_GROK_DUMP_MEMEIC}
.endif

# First packaging of this upstream version (no REVISION).

# Git deps upstream: fetch pinned revs as normal distfiles and path-patch
# Cargo.toml (offline cargo / CARGO_NET_OFFLINE cannot fetch git).
SITES.nucleo =		https://github.com/helix-editor/nucleo/archive/
DISTFILES.nucleo =	nucleo-5b74652{5b74652}.tar.gz
SITES.asyncopenai =	https://github.com/our-forks/async-openai/archive/
DISTFILES.asyncopenai =	async-openai-95b52eb{95b52ebdedf42143083cf3d6f0e0be7c84e9c808}.tar.gz

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
# --locked: lock matches path patches (see patch-Cargo_lock + patch-Cargo_toml).
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
#   - release profile: CGU=256, thin LTO, no debuginfo, strip, no incremental
#     NOTE: CODEGEN_UNITS=1 is *high* peak RAM (one giant unit). Low-mem wants
#     *more* units (e.g. 256) to split work. Cargo default is 16.
# When No: leave MAKE_JOBS alone (ports/dpb parallelism) and skip profile caps.
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

# LIBGIT2_NO_VENDOR: libgit2-sys 0.18 ignores LIBGIT2_SYS_USE_PKG_CONFIG alone
# when probe fails; force system libgit2 (see cargo.port.mk libgit2-sys hook).
MAKE_ENV +=		PROTOC=${LOCALBASE}/bin/protoc \
			LIBGIT2_NO_VENDOR=1

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# Glob PATCH_LIST=patch-* is expanded too late for :N filtering.
# Explicit lists so flavors do not cross-contaminate:
#   default  = offline cargo + voice-aucat + minimal-build (not memeic)
#   memeic   = offline cargo + modcargo only (memeic dump; no other branches)
.if ${FLAVOR:L:Mmemeic}
PATCH_LIST =	patch-Cargo_lock \
		patch-Cargo_toml \
		patch-modcargo-crates_kqueue-1_1_1_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_other_rs \
		patch-modcargo-crates_nono-0_53_0_src_capability_rs \
		patch-modcargo-crates_notify-8_2_0_src_kqueue_rs \
		patch-modcargo-crates_pprof-0_15_0_src_addr_validate_rs \
		patch-modcargo-crates_pprof-0_15_0_src_profiler_rs \
		patch-modcargo-crates_smartstring-1_0_1_build_rs
.else
PATCH_LIST =	patch-Cargo_lock \
		patch-Cargo_toml \
		patch-crates_codegen_xai-file-utils_src_workspace_classifier_rs \
		patch-crates_codegen_xai-fsnotify_src_handle_rs \
		patch-crates_codegen_xai-grok-sandbox_Cargo_toml \
		patch-crates_codegen_xai-grok-sandbox_src_lib_rs \
		patch-crates_codegen_xai-grok-shell_build_rs \
		patch-crates_codegen_xai-grok-tools_build_rs \
		patch-crates_codegen_xai-grok-voice_Cargo_toml \
		patch-crates_codegen_xai-grok-voice_src_audio_capture_openbsd_rs \
		patch-crates_codegen_xai-grok-voice_src_audio_mod_rs \
		patch-crates_codegen_xai-grok-voice_src_lib_rs \
		patch-crates_codegen_xai-grok-voice_src_probe_rs \
		patch-modcargo-crates_kqueue-1_1_1_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_other_rs \
		patch-modcargo-crates_nono-0_53_0_src_capability_rs \
		patch-modcargo-crates_notify-8_2_0_src_kqueue_rs \
		patch-modcargo-crates_pprof-0_15_0_src_addr_validate_rs \
		patch-modcargo-crates_pprof-0_15_0_src_profiler_rs \
		patch-modcargo-crates_smartstring-1_0_1_build_rs
.endif

# post-extract runs before MODCARGO moves crates into modcargo-crates/.
# - path-deps for git crates (nucleo, async-openai); lock drop of git
#   source= lines is patch-Cargo_lock (with patch-Cargo_toml)
# - OpenBSD sandbox sources (first-party; not yet upstream)
post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/vendor
	${INSTALL_DATA_DIR} ${WRKSRC}/crates/codegen/xai-grok-sandbox/examples
	# github archive dirs are <name>-<fullsha>
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
.if !${FLAVOR:L:Mmemeic}
	# minimal-build sandbox backend — default flavor only
	cp ${FILESDIR}/openbsd.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/src/openbsd.rs
	cp ${FILESDIR}/openbsd_sandbox_smoke.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/examples/openbsd_sandbox_smoke.rs
.endif

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/xai-grok-pager \
		${PREFIX}/bin/grok
	# Same composition-root binary under both names.
	cd ${PREFIX}/bin && ln grok agent

.include "crates.inc"

.include <bsd.port.mk>
