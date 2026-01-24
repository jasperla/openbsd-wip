# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.123

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
# Summary [ 408.644s] 655 tests run: 646 passed, 9 failed, 2 skipped
# FAIL [   7.399s] (  9/655) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  22.444s] ( 15/655) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  24.406s] ( 16/655) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  10.995s] ( 29/655) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [   9.681s] ( 30/655) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   5.006s] ( 32/655) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [  11.095s] ( 35/655) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  26.306s] ( 40/655) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [  15.345s] ( 77/655) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
