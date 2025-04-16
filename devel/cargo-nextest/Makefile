# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.94

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

BUILD_DEPENDS +=	archivers/zstd
LIB_DEPENDS +=		${BUILD_DEPENDS}

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
#      Summary [ 193.896s] 317 tests run: 307 passed, 10 failed, 1 skipped
# TRY 4 FAIL [   5.806s] integration-tests::integration test_list_binaries_only
# TRY 4 FAIL [   5.775s] integration-tests::integration test_list_default
# TRY 4 FAIL [   5.451s] integration-tests::integration test_list_full
# TRY 4 FAIL [   6.693s] integration-tests::integration test_list_with_default_filter
# TRY 4 FAIL [  10.894s] integration-tests::integration test_run
# TRY 4 FAIL [   7.922s] integration-tests::integration test_run_with_default_filter
# TRY 4 FAIL [   5.934s] integration-tests::integration test_run_with_priorities
# TRY 4 FAIL [   3.736s] integration-tests::integration test_show_config_test_groups
# TRY 4 FAIL [   2.509s] integration-tests::integration test_target_dir
# TRY 4 FAIL [   0.236s] integration-tests::integration test_version_info
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
