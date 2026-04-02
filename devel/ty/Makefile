COMMENT =	fast Python type checker and language server

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ty
GH_TAGNAME =	0.0.27

# Download ruff sources (sub-module in Git repository)
RUFF =		39c3636bc9c37db2652a0123848949a459e02988
DIST_TUPLE +=	github astral-sh ruff ${RUFF} ruff

# Rust crates downloaded via git
LSPTYPES =	e15db0593f0ecbbd80599c3f5880e4bf5da1ca0c
SALSA =		2f687a17ceea8ec7aaa605561ccbde938ccef086

DIST_TUPLE +=	github astral-sh lsp-types ${LSPTYPES} ../lsp-types
DIST_TUPLE +=	github salsa-rs salsa ${SALSA} ../salsa

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
# ruff Python module already installed via ruff package
do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ty ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
