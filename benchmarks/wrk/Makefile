# $OpenBSD$

COMMENT =		modern HTTP benchmarking tool

VERSION =		3.0.4
DISTNAME =		${VERSION}
PKGNAME =		wrk-${VERSION}

CATEGORIES =		benchmarks www

HOMEPAGE =		https://github.com/wg/wrk

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# Apache License
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		https://github.com/wg/wrk/releases/

MODULES =        	lang/lua

MAKE_ENV +=      	LUA_LIBDIR=${MODLUA_LIBDIR} LUA_INC=${MODLUA_INCL_DIR}

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		lang/luajit
#TEST_DEPENDS =		???

USE_GMAKE =		Yes

WRKSRC =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
