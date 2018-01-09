# $OpenBSD$

V =		2.6
COMMENT =	3D racing game based on VDrift and OGRE with track editor
PKGNAME =	stuntrally-${V}
DISTFILES =	stuntrally-${V}{${V}}${EXTRACT_SUFX} \
		stuntrally-tracks-${V}{${V}}${EXTRACT_SUFX}:0
CATEGORIES =	games x11

HOMEPAGE =	https://stuntrally.tuxfamily.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} BulletCollision BulletDynamics BulletFileLoader                                                                   
WANTLIB += BulletWorldImporter LinearMath MyGUI.OgrePlatform MyGUIEngine                                                                        
WANTLIB += OgreMain OgreOverlay OgrePaging OgreTerrain SDL2 boost_atomic-mt                                                                     
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_serialization-mt boost_system-mt boost_thread-mt
WANTLIB += boost_wave-mt c enet m ogg openal vorbisfile

MASTER_SITES =	https://github.com/stuntrally/stuntrally/archive/
MASTER_SITES0 =	https://github.com/stuntrally/tracks/archive/

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		devel/boost \
		devel/bullet \
		devel/mygui \
		devel/sdl2 \
		net/enet

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

post-extract:
	@mv ${WRKDIR}/tracks-${V} ${WRKSRC}/data/tracks

.include <bsd.port.mk>
