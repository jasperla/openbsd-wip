# $OpenBSD$

COMMENT =	cross-platform scripting library

V =		2.29.2
PKGNAME =	angelscript-${V}
DISTNAME =	angelscript_${V}

SHARED_LIBS =	angelscript 0.0 # 2.29.2

EXTRACT_SUFX =	.zip

CATEGORIES =	lang
HOMEPAGE =	http://www.angelcode.com/angelscript

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# ZLIB
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/sdk/files/

WANTLIB=	${COMPILER_LIBCXX} m

USE_GMAKE =	Yes
MAKE_FILE =	makefile
MAKE_FLAGS =	CXX='${CXX}' CXXFLAGS='${CXXFLAGS} ${PICFLAG}' \
		VERSION=${LIBangelscript_VERSION} SHARED=1 \
		LOCAL=${DESTDIR}${PREFIX}

WRKDIST =	${WRKDIR}/sdk
WRKSRC =	${WRKDIR}/sdk/angelscript/projects/gnuc

post-extract:
	perl -i -pe 's/\r$$//' ${WRKDIST}/angelscript/source/*.cpp \
		${WRKSRC}/makefile

.include <bsd.port.mk>
