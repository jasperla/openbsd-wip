COMMENT =	fast type checker and language server for Python

VERSION =	1.2.0

DISTNAME =	pyrefly-${VERSION}

SITES =         https://github.com/facebook/pyrefly/
DISTFILES =     pyrefly-{/archive/refs/tags/}${VERSION}.tar.gz

# Rust crates downloaded via git
BACKTRACE =	df979dcf80027eb047d7bb9e0874710c15009f31
LSPTYPES =	395d6bfcd6c3696a64cfe9cd93b86f981fb85112

DIST_TUPLE +=	github rust-lang backtrace-rs ${BACKTRACE} ../backtrace-rs
DIST_TUPLE +=	github astral-sh lsp-types ${LSPTYPES} ../lsp-types

CATEGORIES =	devel

# https://github.com/facebook/pyrefly/
HOMEPAGE =	https://pyrefly.org/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =	${MODCARGO_WANTLIB} m zstd

BUILD_DEPENDS +=	archivers/zstd
LIB_DEPENDS +=		${BUILD_DEPENDS}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

# For libzstd
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/pyrefly ${PREFIX}/bin/

# Tests failures for v1.2.0
# test result: FAILED. 7438 passed; 2 failed; 3 ignored; 0 measured; 0 filtered out; finished in 821.57s
# test::lsp::lsp_interaction::diagnostic::test_missing_source_for_stubs_diagnostic
# test::lsp::lsp_interaction::diagnostic::test_missing_source_with_config_diagnostic_has_errors

.include "crates.inc"

.include <bsd.port.mk>
