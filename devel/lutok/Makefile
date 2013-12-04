# $OpenBSD $

COMMENT =		lightweight C++ API for Lua
DISTNAME =		lutok-0.3

SHARED_LIBS +=  	lutok                     0.0 # 2.0
CATEGORIES =		devel sysutils
HOMEPAGE =		https://code.google.com/p/lutok/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# New BSD License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c m stdc++

MODULES =		lang/lua

LIB_DEPENDS=   		${MODLUA_LIB_DEPENDS}

MASTER_SITES =		https://lutok.googlecode.com/files/

TEST_TARGET=		check

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-atf=auto

CONFIGURE_ENV= 		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
                	LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

.include <bsd.port.mk>
