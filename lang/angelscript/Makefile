# $OpenBSD$

COMMENT =	cross-platform scripting library

V =		2.33.0
PKGNAME =	angelscript-${V}
DISTNAME =	angelscript_${V}

SHARED_LIBS =	angelscript 0.0 # 2.33.0

EXTRACT_SUFX =	.zip

CATEGORIES =	lang
HOMEPAGE =	http://www.angelcode.com/angelscript

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# ZLIB
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/sdk/files/

WANTLIB=	${COMPILER_LIBCXX} m

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX='${CXX}' CXXFLAGS='${CXXFLAGS} ${PICFLAG}' \
		SHLIB_VERSION=${LIBangelscript_VERSION} \
		PREFIX=${TRUEPREFIX}

WRKDIST =	${WRKDIR}/sdk
WRKSRC =	${WRKDIR}/sdk/angelscript/projects/gnuc

INSTALL_TARGET =install_all

post-extract:
	perl -i -pe 's/\r$$//' ${WRKDIST}/angelscript/source/*.cpp

.include <bsd.port.mk>
