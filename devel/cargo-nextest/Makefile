# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.110

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
# Summary [ 235.674s] 358 tests run: 348 passed, 10 failed, 2 skipped
# FAIL [  15.266s] ( 10/358) integration-tests::integration test_list_default
# FAIL [  15.380s] ( 11/358) integration-tests::integration test_list_binaries_only
# FAIL [   9.166s] ( 12/358) integration-tests::integration test_list_full
# FAIL [   6.984s] ( 16/358) integration-tests::integration test_list_with_default_filter
# FAIL [  10.246s] ( 18/358) integration-tests::integration test_run
# FAIL [   7.728s] ( 23/358) integration-tests::integration test_run_with_default_filter
# FAIL [   8.478s] ( 24/358) integration-tests::integration test_run_with_priorities
# FAIL [  12.612s] ( 30/358) integration-tests::integration test_show_config_test_groups
# FAIL [   0.233s] ( 31/358) integration-tests::integration test_version_info
# FAIL [   2.905s] ( 41/358) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
