# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.120

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

# Crate uuid v1.2.1 needed for tests
MODCARGO_CRATES +=	uuid	1.2.1	# Apache-2.0 OR MIT

SEPARATE_BUILD =	Yes

post-extract:
	mv ${WRKDIR}/nextest-cargo-nextest-${VERSION}/ ${WRKSRC}
	rm -rf ${WRKDIR}/nextest-cargo-nextest-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/cargo-nextest ${PREFIX}/bin/

# Nextest's own tests do not work with cargo test.
# We must use nextest to run its own test suite.
#
# Summary [ 244.119s] 451 tests run: 430 passed, 21 failed, 2 skipped
# FAIL [  16.226s] (  9/451) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  16.396s] ( 10/451) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  16.514s] ( 11/451) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  13.013s] ( 15/451) integration-tests::integration interceptor::test_tracer_integration
# FAIL [   6.296s] ( 20/451) integration-tests::integration test_filterset_with_string_filters
# FAIL [   7.789s] ( 21/451) integration-tests::integration test_filterset_without_string_filters
# FAIL [   6.132s] ( 22/451) integration-tests::integration test_list_binaries_only
# FAIL [   6.342s] ( 23/451) integration-tests::integration test_list_default
# FAIL [   6.392s] ( 24/451) integration-tests::integration test_list_full
# FAIL [   6.404s] ( 27/451) integration-tests::integration test_list_with_default_filter
# FAIL [   8.741s] ( 29/451) integration-tests::integration test_retries
# FAIL [  13.258s] ( 31/451) integration-tests::integration test_listing_with_target_runner
# FAIL [   9.281s] ( 34/451) integration-tests::integration test_run
# FAIL [   7.954s] ( 37/451) integration-tests::integration test_run_ignored
# FAIL [   5.038s] ( 38/451) integration-tests::integration test_run_with_default_filter
# FAIL [   8.259s] ( 41/451) integration-tests::integration test_run_with_priorities
# FAIL [   7.313s] ( 42/451) integration-tests::integration test_run_with_target_runner
# FAIL [   8.380s] ( 46/451) integration-tests::integration test_show_config_test_groups
# FAIL [   2.103s] ( 47/451) integration-tests::integration test_target_dir
# FAIL [  14.804s] ( 50/451) integration-tests::integration test_string_filters_without_filterset
# FAIL [   0.304s] ( 51/451) integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
