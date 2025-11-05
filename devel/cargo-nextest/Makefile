# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.111

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
# Summary [ 229.078s] 363 tests run: 353 passed, 10 failed, 2 skipped
# FAIL [  15.073s] ( 10/363) integration-tests::integration test_list_binaries_only
# FAIL [   7.585s] ( 11/363) integration-tests::integration test_list_full
# FAIL [  15.529s] ( 12/363) integration-tests::integration test_list_default
# FAIL [   9.727s] ( 17/363) integration-tests::integration test_list_with_default_filter
# FAIL [   9.978s] ( 18/363) integration-tests::integration test_run
# FAIL [  16.765s] ( 25/363) integration-tests::integration test_run_with_default_filter
# FAIL [  11.660s] ( 26/363) integration-tests::integration test_run_with_priorities
# FAIL [   7.685s] ( 30/363) integration-tests::integration test_show_config_test_groups
# FAIL [   3.119s] ( 31/363) integration-tests::integration test_target_dir
# FAIL [   0.211s] ( 32/363) integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
