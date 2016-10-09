# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	Lua library for conversion between markup formats

V =		0.4.0
PKGNAME =	lua-lunamark-${V}

GH_ACCOUNT =	jgm
GH_PROJECT =	lunamark
GH_TAGNAME =	${V}

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

RUN_DEPENDS =	devel/lpeg \
		devel/lua-utf8 \
		textproc/lua-cosmo

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lunamark.lua ${MODLUA_DATADIR}
	cp -r ${WRKSRC}/lunamark ${MODLUA_DATADIR}

.include <bsd.port.mk>
