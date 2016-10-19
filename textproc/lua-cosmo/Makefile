# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	safe templates engine for Lua

V =		16.06.04
PKGNAME =	lua-cosmo-${V}

GH_ACCOUNT =	mascarenhas
GH_PROJECT =	cosmo
GH_TAGNAME =	v${V}

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

RUN_DEPENDS =	devel/lpeg

TEST_DEPENDS =	${BUILD_PKGPATH}

FLAVORS =	lua52 lua53
FLAVOR ?=

MAKE_ENV =	LUA_DIR=${MODLUA_DATADIR}

USE_GMAKE =	Yes

do-test:
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test_cosmo.lua

.include <bsd.port.mk>
