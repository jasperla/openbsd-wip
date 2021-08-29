# $OpenBSD$

COMMENT =	package manager for lua

DISTNAME =	luarocks-3.7.0

CATEGORIES =	devel

HOMEPAGE =	https://luarocks.org/

# MIT
PERMIT_PACKAGE =	Yes

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
