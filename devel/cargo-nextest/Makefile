# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.115

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
# Summary [ 237.814s] 382 tests run: 369 passed, 13 failed, 2 skipped
# FAIL [  18.254s] ( 10/382) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  18.378s] ( 11/382) integration-tests::integration interceptor::test_tracer_integration
# FAIL [  12.883s] ( 12/382) integration-tests::integration test_list_binaries_only
# FAIL [   8.421s] ( 14/382) integration-tests::integration test_list_default
# FAIL [   9.451s] ( 15/382) integration-tests::integration test_list_full
# FAIL [   7.573s] ( 18/382) integration-tests::integration test_list_with_default_filter
# FAIL [   7.822s] ( 20/382) integration-tests::integration test_run
# FAIL [   9.478s] ( 27/382) integration-tests::integration test_run_with_default_filter
# FAIL [   6.886s] ( 28/382) integration-tests::integration test_run_with_priorities
# FAIL [   2.603s] ( 32/382) integration-tests::integration test_target_dir
# FAIL [   0.230s] ( 33/382) integration-tests::integration test_version_info
# FAIL [  23.653s] (125/382) integration-tests::integration test_show_config_test_groups
# FAIL [   4.797s] (370/382) nextest-runner::integration basic::test_timeout_with_flaky
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
