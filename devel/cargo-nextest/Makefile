# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.121

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
# Summary [ 394.937s] 456 tests run: 435 passed, 21 failed, 2 skipped
# FAIL [  34.938s] (  9/456) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  35.346s] ( 10/456) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  35.264s] ( 12/456) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  20.671s] ( 15/456) integration-tests::integration interceptor::test_tracer_integration
# FAIL [  12.949s] ( 20/456) integration-tests::integration test_list_binaries_only
# FAIL [  15.033s] ( 21/456) integration-tests::integration test_filterset_without_string_filters
# FAIL [   7.108s] ( 22/456) integration-tests::integration test_list_default
# FAIL [  16.552s] ( 23/456) integration-tests::integration test_filterset_with_string_filters
# FAIL [  12.350s] ( 24/456) integration-tests::integration test_list_full
# FAIL [  12.129s] ( 28/456) integration-tests::integration test_list_with_default_filter
# FAIL [  18.044s] ( 30/456) integration-tests::integration test_listing_with_target_runner
# FAIL [  10.627s] ( 31/456) integration-tests::integration test_retries
# FAIL [  12.906s] ( 34/456) integration-tests::integration test_run
# FAIL [  14.972s] ( 37/456) integration-tests::integration test_run_ignored
# FAIL [  13.506s] ( 39/456) integration-tests::integration test_run_with_default_filter
# FAIL [  11.447s] ( 40/456) integration-tests::integration test_run_with_priorities
# FAIL [  12.027s] ( 43/456) integration-tests::integration test_run_with_target_runner
# FAIL [  11.420s] ( 47/456) integration-tests::integration test_show_config_test_groups
# FAIL [   9.823s] ( 48/456) integration-tests::integration test_string_filters_without_filterset
# FAIL [   6.265s] ( 49/456) integration-tests::integration test_target_dir
# FAIL [   0.250s] ( 51/456) integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
