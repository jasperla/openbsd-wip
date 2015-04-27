# $OpenBSD: Makefile,v 1.32 2014/09/24 18:17:27 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 ES6 JavaScript for clients and servers

GH_ACCOUNT=	iojs
GH_PROJECT=	io.js
GH_TAGNAME=	v1.8.1

DISTNAME=	iojs-${GH_TAGNAME}
PKGNAME=	${DISTNAME:S/v//g}

CATEGORIES=	lang devel

HOMEPAGE=	http://iojs.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python gcc4

WANTLIB +=	c crypto execinfo kvm m pthread ssl stdc++ util z

LIB_DEPENDS=	devel/libexecinfo

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gyp \
		sysutils/flock

# node-gyp uses it at runtime
RUN_DEPENDS=	devel/gmake \
		devel/gyp \
		sysutils/flock

TEST_TARGET= test
CONFIGURE_STYLE= simple
CONFIGURE_ARGS= --prefix=${PREFIX} \
		--shared-openssl \
		--shared-zlib

SUBST_VARS+=	CFLAGS
SUBST_VARS+= 	PREFIX
SUBST_VARS+= 	LOCALBASE
SUBST_VARS+= 	DISTFILES

MODGCC4_ARCHS = *
MODGCC4_LANGS =	c++

MAKE_ENV+=	V=1 C="${CC}" CXX="${CXX}" CCFLAGS+="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

NO_CCACHE=	Yes

pre-configure:
	@# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKDIST}/lib/module.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/configure.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/install.js \
		${WRKDIST}/common.gypi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/iojs
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
		${PREFIX}/lib/iojs/${DISTFILES}



.include <bsd.port.mk>
