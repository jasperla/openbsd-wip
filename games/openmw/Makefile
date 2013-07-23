# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

VMEM_WARNING =		Yes

COMMENT =		open source implementation of TES III: Morrowind

V =			0.24.0
DISTNAME =		openmw-$V-source
PKGNAME =		openmw-$V

CATEGORIES =		games

HOMEPAGE =		http://openmw.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3 / OFLv1.1 / Daedric font not for sale!
PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILE_CDROM =	not for sale
PERMIT_DISTFILE_FTP =	Yes

WANTLIB += BulletCollision BulletDynamics BulletSoftBody LinearMath
WANTLIB += MyGUI.OgrePlatform MyGUIEngine OIS OgreMain OgreTerrain
WANTLIB += QtGui QtNetwork QtXml QtXmlPatterns Xt avcodec avformat
WANTLIB += avutil boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_system-mt boost_thread-mt
WANTLIB += boost_wave-mt c m openal pthread swscale

MASTER_SITES =		http://openmw.googlecode.com/files/
EXTRACT_CASES = *.tar.gz) \
	${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf - -C ${WRKDIST};;

MODULES =		gcc4 devel/cmake x11/qt4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
BUILD_DEPENDS = 	sysutils/e2fsprogs
LIB_DEPENDS =		audio/openal \
			devel/bullet \
			devel/mygui \
			devel/ois \
			graphics/ffmpeg \
			x11/ogre,-main>=1.8.1
RUN_DEPENDS  = 		devel/desktop-file-utils

CONFIGURE_ARGS += 	-DBINDIR=${LOCALBASE}/bin \
			-DMANDIR:PATH=${LOCALBASE}/man \
			-DDATADIR:PATH=${LOCALBASE}/share/openmw \
			-DSYSCONFDIR=${SYSCONFDIR}/openmw \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib"

NO_TEST =		Yes

CFLAGS += 		-pthread

pre-extract:
	@mkdir ${WRKDIST}

.include <bsd.port.mk>
