# $OpenBSD$

COMMENT =	base2, 16, 32, 64 and 85 encod / decode for lua

GH_ACCOUNT =	LuaDist2
GH_PROJECT =	basexx
GH_TAGNAME =	0.4.0-1

PKGNAME =	lua${GH_PROJECT}-${GH_TAGNAME:S/-1$//}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/lua

NO_BUILD =	Yes
NO_TEST =	Yes

FLAVORS =	lua51 lua52 lua53
FLAVOR ?=

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lib/basexx.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
