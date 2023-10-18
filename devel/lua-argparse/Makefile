PKG_ARCH =	*

COMMENT =	command line parser for Lua

GH_ACCOUNT =	luarocks
GH_PROJECT =	argparse
GH_TAGNAME =	0.7.1

PKGNAME =	lua-${DISTNAME}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

FLAVORS =	lua52 lua53 lua54
FLAVOR? =

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/argparse.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
