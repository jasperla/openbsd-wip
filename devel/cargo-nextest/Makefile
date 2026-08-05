# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.143

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
# Summary [ 361.037s] 886 tests run: 873 passed, 13 failed, 2 skipped
# FAIL [   6.505s] (  9/886) integration-tests::integration cargo_message_format::test_cargo_message_format_errors
# FAIL [  22.624s] ( 15/886) integration-tests::integration interceptor::test_bench_debugger_integration
# FAIL [  23.606s] ( 17/886) integration-tests::integration interceptor::test_bench_tracer_integration
# FAIL [  10.537s] ( 34/886) integration-tests::integration record_replay::test_replayability_store_version_too_new
# FAIL [  14.071s] ( 35/886) integration-tests::integration record_replay::test_rerun_all_pass
# FAIL [  11.358s] ( 37/886) integration-tests::integration record_replay::test_rerun_errors
# FAIL [   8.327s] ( 39/886) integration-tests::integration record_replay::test_rerun_requires_experimental_feature
# FAIL [  13.464s] ( 41/886) integration-tests::integration record_replay::test_rerun_tests_outstanding
# FAIL [  28.530s] ( 47/886) integration-tests::integration record_replay::test_rerun_run_id_selectors
# FAIL [  13.940s] ( 60/886) integration-tests::integration test_cargo_config_env_vars
# FAIL [  15.710s] ( 63/886) integration-tests::integration test_cargo_metadata_defines_build_scope
# FAIL [  14.916s] ( 97/886) integration-tests::integration test_setup_script_defined_env
# FAIL [  14.691s] (102/886) integration-tests::integration test_target_dir
do-test:
	NEXTEST_HIDE_PROGRESS_BAR=1 ${MODCARGO_CARGO_RUN} run \
		--package cargo-nextest -- nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
