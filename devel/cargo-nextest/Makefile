# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.136

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
# Summary [ 454.673s] 814 tests run: 803 passed (2 slow), 11 failed, 2 skipped
# SLOW [  63.320s] ( 75/814) integration-tests::integration test_list_with_default_filter
# SLOW [  84.287s] ( 88/814) integration-tests::integration test_run
# FAIL [   9.022s] (  9/814) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  24.267s] ( 15/814) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  25.567s] ( 17/814) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  14.210s] ( 33/814) integration-tests::integration record_replay::test_replayability_store_version_too_new
# FAIL [  16.024s] ( 34/814) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [  15.587s] ( 36/814) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   7.707s] ( 39/814) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [  13.074s] ( 40/814) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  32.931s] ( 47/814) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [  17.000s] ( 87/814) integration-tests::integration test_setup_script_defined_env
# FAIL [  17.656s] ( 93/814) integration-tests::integration test_target_di
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
