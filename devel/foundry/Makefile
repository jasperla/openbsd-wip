# $OpenBSD$

COMMENT =		blazing fast, portable, modular toolkit for Ethereum development

GH_ACCOUNT =	foundry-rs
GH_PROJECT =	foundry
GH_TAGNAME =	nightly-050cfc588bf12404923c970d8e702e1cf4d1e5e9

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME:S/-//g}

CATEGORIES =	devel

HOMEPAGE =	https://getfoundry.sh/
MAINTAINER =	Todd Fries <todd@fries.net>

# MIT OR Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

# Only build the four binaries we care about
# (do NOT include --release here — the cargo module already does it)
MODCARGO_BUILD_ARGS +=	--locked \
	        --bin cast \
	        --bin forge \
	        --bin anvil \
	        --bin chisel

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/cast   ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/forge  ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/anvil  ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/chisel ${PREFIX}/bin/

.include <bsd.port.mk>
