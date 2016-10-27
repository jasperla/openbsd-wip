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
			devel/lua-alt-getopt \
			textproc/lua-cosmo

# Lua 5.3 has a builtin module for UTF-8
.if !${FLAVOR:Mlua53}
MODLUA_RUN_DEPENDS +=	converters/lua-utf8
.endif

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

pre-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/bin/*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/lunamark.lua ${MODLUA_DATADIR}
	cp -r ${WRKSRC}/lunamark ${MODLUA_DATADIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/lunadoc \
		${PREFIX}/bin/lunadoc${MODLUA_DEP_VERSION}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/lunamark \
		${PREFIX}/bin/lunamark${MODLUA_DEP_VERSION}

.include <bsd.port.mk>
