# $OpenBSD$

COMMENT =	JSON Parser/Creator for Lua

DISTNAME =	luajson-${GH_TAGNAME}
CATEGORIES =	devel

HOMEPAGE =	http://www.eharning.us/wiki/luajson/

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/lua
RUN_DEPENDS =	devel/lpeg,${FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/luafs,${FLAVOR} \
		devel/lunit,${FLAVOR}

GH_ACCOUNT =	harningt
GH_PROJECT =	luajson
GH_TAGNAME =	1.3.3

TEST_TARGET =	check
TEST_FLAGS =	LUA_BIN=${MODLUA_BIN}
FAKE_FLAGS =	INSTALL_LMOD=${MODLUA_LIBDIR} INSTALL_CMOD=${MODLUA_LIBDIR}

.include <bsd.port.mk>
