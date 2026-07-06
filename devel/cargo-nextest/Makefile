# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.140

DISTNAME =	cargo-nextest-${VERSION}

CATEGORIES =	devel

# https://github.com/nextest-rs/nextest/
HOMEPAGE =	https://nexte.st/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

SITES =		https://github.com/nextest-rs/nextest/
DISTFILES =	cargo-nextest-{archive/refs/tags/cargo-nextest-}${VERSION}.tar.gz

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

BUILD_DEPENDS+=	devel/cargo-generate-vendor \
		archivers/zstd
LIB_DEPENDS +=	archivers/zstd

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

# Disable feature for self-update
MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =		default-no-update

SEPARATE_BUILD =	Yes

post-extract:
	mv ${WRKDIR}/nextest-cargo-nextest-${VERSION}/ ${WRKSRC}
	rm -rf ${WRKDIR}/nextest-cargo-nextest-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/cargo-nextest ${PREFIX}/bin/

# Nextest's own tests do not work with cargo test.
# We must use nextest to run its own test suite.
#
# Summary [ 320.724s] 853 tests run: 840 passed, 13 failed, 2 skipped
# FAIL [   7.360s] (  9/853) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  12.771s] ( 15/853) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  13.260s] ( 16/853) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [   9.616s] ( 33/853) integration-tests::integration record_replay::test_replayability_store_version_too_new
# FAIL [  11.512s] ( 34/853) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [  10.667s] ( 36/853) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   4.998s] ( 39/853) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [  11.318s] ( 40/853) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  26.467s] ( 47/853) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [   3.583s] ( 54/853) integration-tests::integration test_cargo_config_env_vars
# FAIL [   4.177s] ( 56/853) integration-tests::integration test_cargo_metadata_defines_build_scope
# FAIL [   4.219s] ( 88/853) integration-tests::integration test_setup_script_defined_env
# FAIL [   5.482s] ( 96/853) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
