# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

DISTNAME =		openmw-0.23.0

CATEGORIES =		games

HOMEPAGE =		http://openmw.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3 / OFLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody LinearMath
WANTLIB += MyGUIEngine OIS OgreMain OgreTerrain QtGui QtNetwork QtXml
WANTLIB += QtXmlPatterns Xt avcodec avformat avutil boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c freetype m mpg123 openal pthread
WANTLIB += sndfile swscale

MASTER_SITES =		http://openmw.googlecode.com/files/
TAR = 			${LOCALBASE}/bin/gtar

MODULES =		gcc4 devel/cmake x11/qt4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
BUILD_DEPENDS = 	archivers/gtar
LIB_DEPENDS =		audio/libsndfile \
			audio/mpg123 \
			audio/openal \
			devel/bullet \
			devel/mygui \
			devel/ois \
			graphics/ffmpeg \
			x11/ogre,-main>=1.8.1
RUN_DEPENDS  = 		devel/desktop-file-utils

CONFIGURE_ARGS += 	-DBINDIR=${LOCALBASE}/bin \
			-DMANDIR:PATH=${LOCALBASE}/man \
			-DSYSCONFDIR=${SYSCONFDIR}/openmw

NO_TEST =		Yes

WRKDIST = 		${WRKDIR}/openmw-${DISTNAME}
CFLAGS += 		-pthread

.include <bsd.port.mk>
