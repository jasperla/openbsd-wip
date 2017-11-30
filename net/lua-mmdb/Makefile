# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Lua library for reading MaxMind's MMDB databases

V =		0.1
PKGNAME =	lua-mmdb-${V}

GH_ACCOUNT =	daurnimator
GH_PROJECT =	mmdblua
GH_TAGNAME =	v${V}

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua

MODLUA_VERSION = 5.3

TEST_DEPENDS =	net/libmaxminddb

NO_BUILD =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}mmdb
	${INSTALL_DATA} ${WRKSRC}/mmdb/*.lua ${MODLUA_DATADIR}mmdb

do-test:
	sed -i -e "s,GeoLite2-City,${LOCALSTATEDIR}/db/GeoIP/GeoLite2-Country," \
		${WRKSRC}/example.lua
	cd ${WRKSRC} && ${MODLUA_BIN} example.lua

.include <bsd.port.mk>
