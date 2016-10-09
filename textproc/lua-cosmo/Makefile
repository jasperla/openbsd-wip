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

MAKE_ENV =	LUA_DIR=${MODLUA_DATADIR}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
