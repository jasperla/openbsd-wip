# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT-main =	simple implementation of msgpack in C
COMMENT-lua =	Lua bindings to libmsgpack

# Ensure -main does not get flavored for different Lua versions
FULLPKGNAME-main =	libmpack-${V}
FULLPKGPATH-main =	devel/libmpack,-main

# Give the Lua subpackages the right name and path
FULLPKGNAME-lua =	${_MODLUA_PKG_PREFIX}-mpack-${V}
FULLPKGPATH-lua =	devel/libmpack,-lua

V =		1.0.3
DISTNAME =	libmpack-${V}

SHARED_LIBS +=	mpack	0.0

GH_ACCOUNT =   tarruda
GH_PROJECT =   libmpack
GH_TAGNAME =   ${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tarruda/libmpack

MULTI_PACKAGES=	-main -lua

FLAVORS =	lua52 lua53
FLAVOR ?=

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-lua +=		${MODLUA_WANTLIB} m

MODULES =		lang/lua
USE_GMAKE =		Yes
LIB_DEPENDS-lua +=	${MODLUA_LIB_DEPENDS}
RUN_DEPENDS-lua +=	${FULLPKGNAME-main}:${FULLPKGPATH-main}

CPPFLAGS +=		-I${MODLUA_INCL_DIR}
MAKE_FLAGS +=		config=release

post-build:
	cd ${WRKBUILD}/binding/lua && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
                     -f ${MAKE_FILE} ${ALL_TARGET} USE_SYSTEM_LUA=yes \
		     LUA_VERSION_MAJ_MIN=${MODLUA_VERSION:S/.//}

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/binding/lua/mpack.so ${MODLUA_LIBDIR}

# There is a Lua binding test suite written in the "busted framework", which we
# don't yet have in-tree. Until it is, we have our own (minimal) test.
TEST_DEPENDS +=	${FULLPKGNAME-lua}:${BASE_PKGPATH},-lua
post-test:
	${MODLUA_BIN} ${FILESDIR}/test.lua

.include <bsd.port.mk>
