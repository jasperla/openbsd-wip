# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.118

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
# Summary [ 245.287s] 418 tests run: 397 passed, 21 failed, 3 skipped
# FAIL [  15.751s] (  9/418) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  15.778s] ( 10/418) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  16.659s] ( 11/418) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  12.416s] ( 14/418) integration-tests::integration interceptor::test_tracer_integration
# FAIL [   5.049s] ( 19/418) integration-tests::integration test_filterset_without_string_filters
# FAIL [   5.785s] ( 20/418) integration-tests::integration test_filterset_with_string_filters
# FAIL [   6.819s] ( 21/418) integration-tests::integration test_list_default
# FAIL [   6.595s] ( 23/418) integration-tests::integration test_list_full
# FAIL [   8.551s] ( 24/418) integration-tests::integration test_list_binaries_only
# FAIL [   6.780s] ( 25/418) integration-tests::integration test_list_with_default_filter
# FAIL [   7.352s] ( 27/418) integration-tests::integration test_listing_with_target_runner
# FAIL [   9.712s] ( 30/418) integration-tests::integration test_run
# FAIL [  10.740s] ( 31/418) integration-tests::integration test_retries
# FAIL [   9.120s] ( 37/418) integration-tests::integration test_run_ignored
# FAIL [   5.914s] ( 38/418) integration-tests::integration test_run_with_target_runner
# FAIL [   7.996s] ( 40/418) integration-tests::integration test_run_with_default_filter
# FAIL [   8.860s] ( 41/418) integration-tests::integration test_run_with_priorities
# FAIL [   8.017s] ( 46/418) integration-tests::integration test_show_config_test_groups
# FAIL [   4.773s] ( 47/418) integration-tests::integration test_target_dir
# FAIL [  17.409s] ( 49/418) integration-tests::integration test_string_filters_without_filterset
# FAIL [   0.247s] ( 50/418) integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
