# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.130

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
# Summary [ 485.166s] 723 tests run: 714 passed (1 slow), 9 failed, 2 skipped
# SLOW [  65.244s] ( 79/723) integration-tests::integration test_run
# FAIL [   8.545s] (  9/723) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  24.642s] ( 15/723) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  26.292s] ( 16/723) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  18.227s] ( 33/723) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [  13.842s] ( 35/723) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   7.596s] ( 37/723) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [  13.140s] ( 39/723) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  30.483s] ( 43/723) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [  16.932s] ( 84/723) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
