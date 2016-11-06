# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	Lua library for conversion between markup formats

V =		0.5.0
PKGNAME =	lua-lunamark-${V}

GH_ACCOUNT =	jgm
GH_PROJECT =	lunamark
GH_TAGNAME =	${V}

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

MODLUA_RUN_DEPENDS =	devel/lpeg \
			textproc/lua-cosmo

# Lua 5.3 has a builtin UTF-8 module
.if !${FLAVOR:Mlua53}
MODLUA_RUN_DEPENDS +=	converters/lua-utf8
.endif

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lunamark.lua ${MODLUA_DATADIR}
	cp -r ${WRKSRC}/lunamark ${MODLUA_DATADIR}

.include <bsd.port.mk>
