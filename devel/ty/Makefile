COMMENT =	fast Python type checker and language server

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ty
GH_TAGNAME =	0.0.58

# Download ruff sources (sub-module in Git repository)
RUFF =		00ba5d70ce12da81409636a268d45d0ea4251ad6
DIST_TUPLE +=	github astral-sh ruff ${RUFF} ruff

CATEGORIES =	devel

# https://github.com/astral-sh/ty/
HOMEPAGE = 	https://docs.astral.sh/ty/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

WANTLIB +=	${MODCARGO_WANTLIB} m

RUN_DEPENDS +=	devel/ruff

MODPY_PYBUILD =	maturin

# Used to generate crates.inc
MODCARGO_CARGOTOML =	${WRKSRC}/ruff/Cargo.toml

# Don't use libzstd => prevents errors during build/link
MODCARGO_CRATES_KEEP +=	zstd-sys

SEPARATE_BUILD=	Yes

# Python lsprotocol module needed for running tests
NO_TEST =	Yes

# Overriding MODCARGO_CARGOTOML doesn't work properly here as it would
# result in incomplete output from modcargo-gen-crates.
do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${WRKSRC}/ruff/crates/ty/Cargo.toml \
		--release ${MODCARGO_BUILD_ARGS}

# Install only ty binary
# ruff Python module already installed via devel/ruff
do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ty ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
