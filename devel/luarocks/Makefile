# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	package manager for lua

DISTNAME =	luarocks-2.4.4

CATEGORIES =	devel

HOMEPAGE =	https://luarocks.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://luarocks.org/releases/

MODULES =		lang/lua
#BUILD_DEPENDS =	???
RUN_DEPENDS =		net/curl
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

FLAVORS =       lua51 lua52 lua53
FLAVOR ?=

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--with-lua-include=${MODLUA_INCL_DIR} \
			--with-lua-lib=${LOCALBASE}/lib \
			--sysconfdir=${PREFIX}/share/examples/luarocks \
			--lua-version=${MODLUA_VERSION}

NO_TEST =		Yes

ALL_TARGET =		build

post-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},g' ${WRKSRC}/src/bin/*

.include <bsd.port.mk>
