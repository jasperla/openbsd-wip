# $OpenBSD$

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???

COMMENT =		networking and crypto library

DISTNAME =		nacl-20110221

#SHARED_LIBS =		???

CATEGORIES =		security net

HOMEPAGE =		http://nacl.cr.yp.to/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# 
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

MASTER_SITES =		http://hyperelliptic.org/nacl/
EXTRACT_SUFX =		.tar.bz2

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

#NO_BUILD =		Yes
#NO_TEST =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =	???

do-build:
	echo ${CC} ${CFLAGS} >${WRKSRC}/okcompilers/c
	echo ${CXX} ${CXXFLAGS} >${WRKSRC}/okcompilers/cpp
	cd ${WRKSRC} && /bin/sh ./do

.include <bsd.port.mk>
