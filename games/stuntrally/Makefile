# $OpenBSD$

CATEGORIES=	games x11
COMMENT-main=	Stunt Rally game with track editor
COMMENT-data=	Stunt Rally data
HOMEPAGE=	https://code.google.com/p/vdrift-ogre/

MULTI_PACKAGES=	-main -data
PKG_ARCH-data=	*

N=		stuntrally
V=		2.1
DISTNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
MASTER_SITES=	https://github.com/stuntrally/

DISTFILES=	${N}-${V}${EXTRACT_SUFX}{${N}/archive/${V}${EXTRACT_SUFX}} \
		${N}-tracks-${V}${EXTRACT_SUFX}{tracks/archive/${V}${EXTRACT_SUFX}}

WANTLIB-main += MyGUI.OgrePlatform MyGUIEngine OgreMain OgrePaging OgreRTShaderSystem
WANTLIB-main += OgreTerrain OIS SDL2 X11 Xcursor boost_filesystem-mt boost_system-mt
WANTLIB-main += boost_thread-mt c enet m ogg pthread stdc++ vorbisfile

RUN_DEPENDS-main=	${BASE_PKGPATH},-data \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS-main=	devel/mygui \
			devel/ois \
			net/enet \
			devel/sdl2 \
			audio/libvorbis \
			x11/ogre,-main>=1.8.1

MODULES=	devel/cmake
CFLAGS+=	-pthread

CONFIGURE_ARGS=		-DSHARE_INSTALL:String=share/stuntrally \
			-DSHARED_DATA_DIR:String=${TRUEPREFIX}/share/stuntrally

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

post-extract:
	@mv ${WRKDIR}/tracks-${V} ${WRKDIST}/data/tracks

.include <bsd.port.mk>
