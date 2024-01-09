# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	next-generation test runner for Rust

VERSION =	0.9.66

DISTNAME =	cargo-nextest-${VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://nexte.st/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

SITES =		https://github.com/nextest-rs/nextest/
DISTFILES =	cargo-nextest-{archive/refs/tags/cargo-nextest-}${VERSION}.tar.gz

SITES.fix =	https://github.com/nextest-rs/nextest/commit/
# Fix fixtures/nextest-tests/scripts/my-script.sh (issue #1205)
# Fix to disable self-update for cargo-nextest  (issue #1204)
PATCHFILES.fix =	770b6cc0b8138ba3224cbee9b1e6d9cdc550f2f1.patch \
			4a0de0ba4b706dd45b8c247a09e0ad0ec30f962e.patch
PATCH_DIST_STRIP =	-p1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

LIB_DEPENDS +=		archivers/zstd

MODULES =	devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

# Update crate libc >= 0.2.152 (waitid function needed for OpenBSD)
MODCARGO_CRATES_UPDATE =	libc

MODCARGO_RUSTFLAGS +=		-L${LOCALBASE}/lib

# Disable feature for self-update
MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =		default-no-update

post-extract:
	mv ${WRKDIR}/nextest-cargo-nextest-${VERSION}/ ${WRKSRC}
	rm -rf ${WRKDIR}/nextest-cargo-nextest-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/cargo-nextest ${PREFIX}/bin/

# Nextest's own tests do not work with cargo test.
# We must use nextest to run its own test suite.
#
# Summary [ 140.274s] 213 tests run: 213 passed, 0 skipped
do-test:
	${MODCARGO_CARGO_RUN} run --release --package cargo-nextest -- \
		nextest run --profile ci

.include "crates.inc"

.include <bsd.port.mk>
