# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.137

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
# Summary [ 288.638s] 817 tests run: 806 passed, 11 failed, 2 skipped
# FAIL [   6.614s] (  9/817) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  21.611s] ( 15/817) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  22.287s] ( 17/817) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [   9.445s] ( 33/817) integration-tests::integration record_replay::test_replayability_store_version_too_new
# FAIL [  10.354s] ( 34/817) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [   8.138s] ( 37/817) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   5.231s] ( 39/817) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [   9.460s] ( 40/817) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  23.735s] ( 45/817) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [  15.192s] ( 90/817) integration-tests::integration test_setup_script_defined_env
# FAIL [  14.918s] ( 95/817) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
