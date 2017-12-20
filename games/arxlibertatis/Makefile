# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

#ONLY_FOR_ARCHS =	???

V = 	1.1.2

COMMENT =	cross-platform port of Arx Fatalis, a first-person RPG

DISTNAME =	arx-libertatis-${V}

CATEGORIES =	games x11

HOMEPAGE =	https://arx-libertatis.org

#MAINTAINER =		???

#GPLv3+, Bitstream Vera Fonts Copyright, Arev Fonts Copyright, Public Domain
PERMIT_PACKAGE_CDROM =	Yes
#PERMIT_PACKAGE_FTP =	Yes | Reason if No
#PERMIT_DISTFILES_FTP =	Yes | Reason if No

# "make port-lib-depends-check" can help
WANTLIB =		pthread

# where the source files and patches can be fetched
#
#MASTER_SITES =		https://arx-libertatis.org/files/arx-libertatis-${V}/
MASTER_SITES =		https://arx-libertatis.org/files/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=arx/}

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		devel/boost \
			graphics/glm \
			audio/openal \
			devel/sdl2
#TEST_DEPENDS =		???

#MAKE_FLAGS =		-L/usr/include

CONFIGURE_ARGS =        -DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/arx

#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes

#NO_BUILD =		Yes
#NO_TEST =		Yes

# Overrides for default values
#
#CFLAGS =		-DBUILD_CRASHHANDLER=OFF -DBUILD_CRASHREPORTER=OFF
#LDFLAGS =		-lpthread
CXXFLAGS =		-lpthread
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/arx ${PREFIX}/bin/arx

.include <bsd.port.mk>
