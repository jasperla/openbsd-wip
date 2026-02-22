COMMENT =	fast Python type checker and language server

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ty
GH_TAGNAME =	0.0.18

# Download ruff sources (sub-module in Git repository)
RUFF =		ba95d94b6aa5d1b5a93575a0e09264fffd0eea6d
DIST_TUPLE +=	github astral-sh ruff ${RUFF} ruff

# Rust crates downloaded via git
LSPTYPES =	3512a9f33eadc5402cfab1b8f7340824c8ca1439
SALSA =		53421c2fff87426fa0bb51cab06632b87646de13

DIST_TUPLE +=	github astral-sh lsp-types ${LSPTYPES} ../lsp-types
DIST_TUPLE +=	github salsa-rs salsa ${SALSA} ../salsa

CATEGORIES =	devel

# https://github.com/astral-sh/ty/
HOMEPAGE = 	https://docs.astral.sh/ty/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

WANTLIB +=	${MODCARGO_WANTLIB} m

RUN_DEPENDS +=	devel/ruff

MODPY_PYBUILD =	maturin

# Used to generate crates.inc
MODCARGO_CARGOTOML =	${WRKSRC}/ruff/Cargo.toml

# Don't use libzstd => prevents errors during build/link
MODCARGO_CRATES_KEEP +=	zstd-sys

# Error with install
SEPARATE_BUILD=	No

# Python lsprotocol module needed for running tests
NO_TEST =	Yes

# MODCARGO_CARGOTOML cannot be used for build
do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${WRKSRC}/ruff/crates/ty/Cargo.toml \
		--release ${MODCARGO_BUILD_ARGS}

# To generate Rust crates.inc:
# make extract && make modcargo-gen-crates && make modcargo-gen-crates-licenses
.include "crates.inc"

.include <bsd.port.mk>
