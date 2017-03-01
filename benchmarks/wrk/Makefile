# $OpenBSD$

COMMENT =		modern HTTP benchmarking tool

VERSION =		4.0.2
DISTNAME =		${VERSION}
PKGNAME =		wrk-${VERSION}

CATEGORIES =		benchmarks www

GH_ACCOUNT =    	wg
GH_PROJECT =    	wrk
GH_TAGNAME =    	4.0.2

HOMEPAGE =		https://github.com/wg/wrk

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# Apache License
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

#MASTER_SITES =		https://github.com/wg/wrk/releases/

MODULES =        	lang/lua
MAKE_ENV +=      	LUA_LIBDIR=${MODLUA_LIBDIR} LUA_INC=${MODLUA_INCL_DIR}
LIB_DEPENDS =		lang/luajit
USE_GMAKE =		Yes
WRKSRC =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
