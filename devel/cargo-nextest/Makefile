# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.122

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
#
# Summary [ 227.735s] 457 tests run: 436 passed, 21 failed, 2 skipped
# FAIL [  14.285s] (  9/457) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  14.172s] ( 10/457) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  14.809s] ( 12/457) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  11.788s] ( 16/457) integration-tests::integration interceptor::test_tracer_integration
# FAIL [   6.603s] ( 19/457) integration-tests::integration test_filterset_with_string_filters
# FAIL [   5.512s] ( 21/457) integration-tests::integration test_filterset_without_string_filters
# FAIL [   5.375s] ( 22/457) integration-tests::integration test_list_binaries_only
# FAIL [   6.606s] ( 23/457) integration-tests::integration test_list_full
# FAIL [   8.663s] ( 25/457) integration-tests::integration test_list_default
# FAIL [   6.268s] ( 28/457) integration-tests::integration test_list_with_default_filter
# FAIL [  10.725s] ( 29/457) integration-tests::integration test_listing_with_target_runner
# FAIL [   5.502s] ( 30/457) integration-tests::integration test_retries
# FAIL [   8.457s] ( 33/457) integration-tests::integration test_run
# FAIL [   8.212s] ( 37/457) integration-tests::integration test_run_ignored
# FAIL [   5.651s] ( 38/457) integration-tests::integration test_run_with_default_filter
# FAIL [   6.464s] ( 41/457) integration-tests::integration test_run_with_priorities
# FAIL [   5.877s] ( 43/457) integration-tests::integration test_run_with_target_runner
# FAIL [   6.891s] ( 47/457) integration-tests::integration test_show_config_test_groups
# FAIL [   2.640s] ( 48/457) integration-tests::integration test_target_dir
# FAIL [  15.034s] ( 50/457) integration-tests::integration test_string_filters_without_filterset
# FAIL [   0.189s] ( 51/457) integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
