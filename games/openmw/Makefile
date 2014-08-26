# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.30.0
DISTNAME =		openmw-$V

CATEGORIES =		games

HOMEPAGE =		https://openmw.org/en/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3 / OFLv1.1 / Daedric font not for sale!
PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILE_CDROM =	not for sale
PERMIT_DISTFILE_FTP =	Yes

WANTLIB += BulletCollision BulletDynamics LinearMath MyGUI.OgrePlatform
WANTLIB += MyGUIEngine OgreMain QtGui QtNetwork SDL2 avcodec avformat
WANTLIB += avutil boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_system-mt boost_thread-mt boost_wave-mt c m openal
WANTLIB += pthread swscale unshield

MASTER_SITES =		https://github.com/OpenMW/openmw/archive/

MODULES =		gcc4 devel/cmake x11/qt4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
BUILD_DEPENDS = 	sysutils/e2fsprogs
LIB_DEPENDS =		audio/openal \
			devel/bullet \
			devel/mygui \
			devel/sdl2 \
			graphics/ffmpeg \
			x11/ogre,-main>=1.8.1 \
			archivers/unshield
RUN_DEPENDS  = 		devel/desktop-file-utils

CONFIGURE_ARGS += 	-DBINDIR=${LOCALBASE}/bin \
			-DDATADIR:PATH=${LOCALBASE}/share/openmw \
			-DSYSCONFDIR=${PREFIX}/share/examples/openmw \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DMORROWIND_DATA_FILES="${LOCALBASE}/share/openmw/data" \
			-DMORROWIND_RESOURCE_FILES="${LOCALBASE}/share/openmw/resources"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/openmw-openmw-$V

CFLAGS += 		-pthread

.include <bsd.port.mk>
