# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.114

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
# Summary [ 221.240s] 368 tests run: 356 passed, 12 failed, 2 skipped
# FAIL [  17.643s] ( 10/368) integration-tests::integration interceptor::test_debugger_integration
# FAIL [  17.786s] ( 11/368) integration-tests::integration interceptor::test_tracer_integration
# FAIL [  12.608s] ( 12/368) integration-tests::integration test_list_binaries_only
# FAIL [   8.381s] ( 14/368) integration-tests::integration test_list_default
# FAIL [   9.086s] ( 16/368) integration-tests::integration test_list_full
# FAIL [   4.421s] ( 18/368) integration-tests::integration test_run
# FAIL [   8.601s] ( 19/368) integration-tests::integration test_list_with_default_filter
# FAIL [   7.882s] ( 27/368) integration-tests::integration test_run_with_default_filter
# FAIL [   7.534s] ( 28/368) integration-tests::integration test_run_with_priorities
# FAIL [  10.688s] ( 32/368) integration-tests::integration test_show_config_test_groups
# FAIL [   0.233s] ( 33/368) integration-tests::integration test_version_info
# FAIL [   2.604s] ( 44/368) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
