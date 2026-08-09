# $OpenBSD$
#
# TEST PORT: registry crates as prebuilt rust-crate-* rlib packages.
# files/crates.inc BUILD_DEPENDS; seed vendor + target; rustc-prebuilt wrapper.
# REVISION bumps when crate packaging model changes.

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
# default (no flavor): stock monorepo dump — unadulterated product package.
# memeic: experimental "never forget" / typed-memory tree (MemEIC-inspired).
#   env FLAVOR=memeic make package
# Default PKGNAME/dist/crates.inc path unchanged when FLAVOR is empty.
# memeic uses a separate dump (toddfries fork until upstreamed) and an
# explicit FULLPKGNAME so packages never collide with the stock package.
FLAVORS =		memeic
FLAVOR ?=

COMMENT =		SpaceXAI grok (test: rust-crate-* seeds)

# Upstream publishes periodic monorepo dumps (not a one-shot dump).
# DIST_TUPLE (not bare GH_* without DISTNAME): empty DISTNAME made GH_DISTFILE
# expand to "-….tar.gz".
#
# Dump pins — always name BOTH the dump commit AND its xai-org base.
#
# Stock (default flavor): pure xai-org monorepo dump.
#   xai-org commit: 75e73f3d6ac0350d211f12ae7d57c2c0aad72576
#   product PKGNAME: grok-build-test-1.0.0 (tip 75e73f3)
#
# memeic flavor: toddfries openbsd/memeic-typed-memory dump ON THE SAME xai-org base.
#   toddfries dump: 6c4f1464d192c10d8cbe3f288f97807fc508f63d
#   xai-org base:   75e73f3d6ac0350d211f12ae7d57c2c0aad72576  (matches stock)
#   (memeic = stock base + typed memory / connector commits; product 0.2.119)
#   FULLPKGNAME: grok-build-test-memeic-1.0.0
#
# Keep memeic's xai-org base identical to stock whenever possible.
# Both monorepo dumps live in distinfo; the inactive one is SUPDISTFILES so
# checksum does not flag it as "extra" for the other flavor.
_GROK_DUMP_STOCK =xai-org-grok-build-75e73f3d6ac0350d211f12ae7d57c2c0aad72576.tar.gz
_GROK_DUMP_MEMEIC =toddfries-grok-build-6c4f1464d192c10d8cbe3f288f97807fc508f63d.tar.gz

.if ${FLAVOR:L:Mmemeic}
DIST_TUPLE =		github toddfries grok-build 6c4f1464d192c10d8cbe3f288f97807fc508f63d .
# xai-org base for this dump: 75e73f3 (matches stock pin).
# PKGNAME without "memeic" so FLAVOR_EXT does not become -memeic-memeic.
PKGNAME =		grok-build-test-1.0.0
FULLPKGNAME =		grok-build-test-memeic-1.0.0
COMMENT =		SpaceXAI grok test memeic (rust-crate-* seeds)
SUPDISTFILES +=		${_GROK_DUMP_STOCK}
.else
DIST_TUPLE =		github xai-org grok-build 75e73f3d6ac0350d211f12ae7d57c2c0aad72576 .
# Binary crate version at this dump: 1.0.0 (xai-grok-pager-bin; dump 75e73f3).
PKGNAME =		grok-build-test-1.0.0
SUPDISTFILES +=		${_GROK_DUMP_MEMEIC}
.endif

# Packaging model: prebuilt rlib crate ports + seed/wrapper.

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

# sccache daemon is todd-owned; _pbuild cannot write pobj via it (EACCES on .d).
# Prefer MAKE_ENV (always applied by bsd.port.mk); avoid .export (not in OpenBSD make).
MAKE_ENV +=	RUSTC_WRAPPER=${.CURDIR}/files/rustc-prebuilt.sh
MAKE_ENV +=	SCCACHE_DISABLE=1
MAKE_ENV +=	SCCACHE_RUSTC_WRAPPER=

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
# Prebuilt rust-crate-* packages (rlib + source tarball).
.include "${.CURDIR}/files/crates.inc"
BUILD_DEPENDS +=	devel/cargo-generate-vendor
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
MAKE_ENV +=SCCACHE_DISABLE=1
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

# memeic dump already ships: BSD home-dir exclude (workspace_classifier) and
# pager xai-grok-memory dep (Cargo.toml + lock). Glob PATCH_LIST=patch-* is
# expanded too late for :N filtering, so memeic lists patches explicitly.
# Omit: workspace_classifier, pager Cargo.toml, Cargo_lock-memeic-memory.
.if ${FLAVOR:L:Mmemeic}
PATCH_LIST =	patch-Cargo_lock \
		patch-Cargo_toml \
		patch-crates_codegen_xai-fsnotify_src_watcher_rs \
		patch-crates_codegen_xai-grok-voice_Cargo_toml \
		patch-crates_codegen_xai-grok-voice_src_audio_capture_openbsd_rs \
		patch-crates_codegen_xai-grok-voice_src_audio_mod_rs \
		patch-crates_codegen_xai-grok-voice_src_lib_rs \
		patch-crates_codegen_xai-grok-voice_src_probe_rs \
		patch-crates_codegen_xai-grok-sandbox_Cargo_toml \
		patch-crates_codegen_xai-grok-sandbox_src_lib_rs \
		patch-crates_codegen_xai-grok-shell_build_rs \
		patch-crates_codegen_xai-grok-tools_build_rs \
		patch-modcargo-crates_kqueue-1_1_1_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_lib_rs \
		patch-modcargo-crates_mid-4_0_0_src_other_rs \
		patch-modcargo-crates_nono-0_53_0_src_capability_rs \
		patch-modcargo-crates_notify-8_2_0_src_kqueue_rs \
		patch-modcargo-crates_pprof-0_15_0_src_addr_validate_rs \
		patch-modcargo-crates_pprof-0_15_0_src_profiler_rs
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
	cp ${FILESDIR}/openbsd.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/src/openbsd.rs
	cp ${FILESDIR}/openbsd_sandbox_smoke.rs \
		${WRKSRC}/crates/codegen/xai-grok-sandbox/examples/openbsd_sandbox_smoke.rs
	# Seed registry crates BEFORE patch (modcargo-crates/* patches need trees).
	# Prefer DISTDIR/cargo; optional installed rust-crate-* packages.
	@echo "[grok-build-test] seeding modcargo-crates (pkgs + DISTDIR/cargo)"
	@${FILESDIR}/seed-modcargo.sh ${WRKSRC}/modcargo-crates \
		${LOCALBASE} ${DISTDIR} ${FILESDIR}/crate-list.txt

# Registry crate seeds: post-extract (before patch), not MODCARGO_CRATES.
# Merge installed rlibs into cargo target dir; optional rustc short-circuit.
pre-build:
	@${FILESDIR}/seed-target.sh ${MODCARGO_TARGET_DIR} ${LOCALBASE}
	# Package files are often mode 444; cargo must write .d / replace units.
	@chmod -R u+w ${MODCARGO_TARGET_DIR} 2>/dev/null || true
	# Prefer prebuilt rlib when rustc would compile a vendored crate unit.
	@-chmod +x ${FILESDIR}/rustc-prebuilt.sh 2>/dev/null || true

# After modcargo-crates/* patches, refresh .cargo-checksum.json (cargo offline
# rejects edited directory sources).
post-patch:
	@echo "[grok-build-test] refreshing cargo checksums after patches"
	@cd ${WRKSRC}/modcargo-crates && for d in *; do \
		[ -f "$$d/.cargo-checksum.json" ] || continue; \
		tgz="${DISTDIR}/cargo/$$d.tar.gz"; \
		[ -f "$$tgz" ] || tgz="${LOCALBASE}/share/modcargo-crates/$$d.tar.gz"; \
		[ -f "$$tgz" ] || continue; \
		${LOCALBASE}/bin/cargo-generate-vendor "$$tgz" "${WRKSRC}/modcargo-crates/$$d" 2>/dev/null || true; \
	done

do-install:

	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/xai-grok-pager \
		${PREFIX}/bin/grok-test
	cd ${PREFIX}/bin && ln grok-test agent-test

# registry crates: files/crates.inc (BUILD_DEPENDS), not MODCARGO_CRATES

.include <bsd.port.mk>

# After bsd.port.mk so this beats /etc/mk.conf MAKE_ENV+=RUSTC_WRAPPER=sccache-rustc
# (last assignment wins in the exported MAKE_ENV string). Prebuilt short-circuits
# vendored crate units using installed rust-crate-* rlibs; sccache under _pbuild
# still hits EACCES if the server compiles as todd into pobj.
MAKE_ENV +=RUSTC_WRAPPER=${FILESDIR}/rustc-prebuilt.sh
MAKE_ENV +=SCCACHE_RUSTC_WRAPPER=
MAKE_ENV +=SCCACHE_DISABLE=1
