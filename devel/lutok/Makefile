# $OpenBSD $

COMMENT =		lightweight C++ API for Lua
DISTNAME =		lutok-0.3

SHARED_LIBS += ct	5.0      # .4.0
CATEGORIES =		devel sysutils
HOMEPAGE =		https://code.google.com/p/lutok/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# New BSD License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m stdc++

WANTLIB=        c crypto m ssl pcre ${MODLUA_WANTLIB}

MODULES=        lang/lua
MODLUA_SA=      Yes

LIB_DEPENDS=    devel/pcre \
                ${MODLUA_LIB_DEPENDS}

MASTER_SITES =		https://lutok.googlecode.com/files/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	LUA_CFLAGS="-I/usr/local/include/lua-5.1" LUA_LIBS="-L/usr/local/lib  -llua5.1 -lm"

.include <bsd.port.mk>
