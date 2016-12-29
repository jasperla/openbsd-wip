# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

# XXX where is the -O3 coming from?

COMMENT =	simple implementation of msgpack in C

V =		1.0.3
DISTNAME =	libmpack-${V}

SHARED_LIBS +=	mpack	0.0

GH_ACCOUNT =   tarruda
GH_PROJECT =   libmpack
GH_TAGNAME =   ${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/tarruda/libmpack

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua
USE_GMAKE =		Yes

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
