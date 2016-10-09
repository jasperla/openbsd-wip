# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	process application arguments the same way as getopt_long

V =		0.7
PKGNAME =	lua-alt-getopt-${V}

GH_ACCOUNT =	luadist
GH_PROJECT =	alt-getopt
GH_TAGNAME =	${V}

CATEGORIES =	devel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/alt_getopt.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
