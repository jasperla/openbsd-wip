# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT-main =	simple implementation of msgpack in C
COMMENT-lua =	Lua bindings to libmsgpack

PKGNAME-main =	libmpack-${V}
PKGNAME-lua =	lua-libmpack-${V}

V =		1.0.3
DISTNAME =	libmpack-${V}

SHARED_LIBS +=	mpack	0.0

GH_ACCOUNT =   tarruda
GH_PROJECT =   libmpack
GH_TAGNAME =   ${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tarruda/libmpack

MULTI_PACKAGES=	-main -lua

# XXX how to omit flavors of -main?
FLAVORS =	lua52 lua53
FLAVOR ?=	${MODLUA_FLAVOR}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-lua +=		${MODLUA_WANTLIB} m

MODULES =		lang/lua
USE_GMAKE =		Yes
LIB_DEPENDS-lua +=	${MODLUA_LIB_DEPENDS}

CPPFLAGS +=		-I${MODLUA_INCL_DIR}
MAKE_FLAGS +=		config=release

post-build:
	cd ${WRKBUILD}/binding/lua && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
                     -f ${MAKE_FILE} ${ALL_TARGET} USE_SYSTEM_LUA=yes \
		     LUA_VERSION_MAJ_MIN=${MODLUA_VERSION:S/.//}

post-install:
	rm -f ${PREFIX}/lib/libmpack.la
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/binding/lua/mpack.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
