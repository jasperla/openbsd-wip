# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	UTF-8 support module for Lua and LuaJIT

V =		0.1.1
PKGNAME =	lua-utf8-${V}

GH_ACCOUNT =	starwing
GH_PROJECT =	luautf8
GH_TAGNAME =	${V}

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua
TEST_DEPENDS +=	${BASE_PKGPATH}
WANTLIB +=	${MODLUA_WANTLIB}

CFLAGS +=	`pkg-config --cflags ${MODLUA_DEP}`
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST} && ${LINK} lua-utf8.so lutf8lib.c ${MODLUA_LIB}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lua-utf8.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
