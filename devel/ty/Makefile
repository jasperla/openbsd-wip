COMMENT =	fast Python type checker and language server

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ty
GH_TAGNAME =	0.0.17

# Download fuff sources (sub-module in Git repository)
RUFF_COMMIT =	10c082f616d8296df0cd3489a98db8c5d40628d1
DIST_TUPLE +=	github astral-sh ruff ${RUFF_COMMIT} ruff

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

# MODCARGO_CARGOTOML =	${WRKSRC}/ruff/Cargo.toml
MODCARGO_CARGOTOML =	${WRKSRC}/ruff/crates/ty/Cargo.toml

# Don't use libzstd => prevents errors during build/link
MODCARGO_CRATES_KEEP +=	zstd-sys

# Error with install
SEPARATE_BUILD =	No

# Python lsprotocol module needed for running tests
NO_TEST =	Yes

# To generate Rust crates.inc:
# make extract && make modcargo-gen-crates && make modcargo-gen-crates-licenses
.include "crates.inc"

.include <bsd.port.mk>
