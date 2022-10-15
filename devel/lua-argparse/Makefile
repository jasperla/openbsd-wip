COMMENT =	command line parser for Lua inspired by argparse for Python

GH_ACCOUNT =	luarocks
GH_PROJECT =	argparse
GH_TAGNAME =	0.7.1

PKGNAME =	lua-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

# No need to build, only a Lua source package
do-build:

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/argparse.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
