# $OpenBSD $

COMMENT =		lightweight C++ API for Lua
DISTNAME =		lutok-0.4

SHARED_LIBS +=		lutok                     0.0 # 2.0
CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/lutok/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# New BSD License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c m stdc++

MODULES =		lang/lua

MASTER_SITES =		https://lutok.googlecode.com/files/

TEST_DEPENDS =          devel/kyua-cli

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV= 		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
                	LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

PORTHOME =              ${WRKDIR}

.include <bsd.port.mk>
