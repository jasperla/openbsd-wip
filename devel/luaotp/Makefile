# $OpenBSD$

COMMENT =	simple OTP implementation for lua

GH_ACCOUNT =	remjey
GH_PROJECT =	luaotp
GH_TAGNAME =	v0.1-5

PKGNAME =	${GH_PROJECT}-${GH_TAGNAME:S/-5$//:S/^v//}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/lua

RUN_DEPENDS =	devel/luabasexx

NO_BUILD =	Yes
NO_TEST =	Yes

FLAVORS =	lua51 lua52 lua53
FLAVOR ?=

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/otp.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
