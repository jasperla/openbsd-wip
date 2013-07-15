# $OpenBSD$

CATEGORIES=	games x11
COMMENT-main=	Stunt Rally game with track editor
COMMENT-data=	Stunt Rally data
HOMEPAGE=	https://code.google.com/p/vdrift-ogre/

MULTI_PACKAGES=	-main -data
PKG_ARCH-data=	*

N=		stuntrally
V=		2.0
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
DISTNAME=	StuntRally-${V}-sources
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=stuntrally/}
EXTRACT_SUFX=	.tar.xz

WANTLIB-main += MyGUI.OgrePlatform MyGUIEngine OgreMain OgrePaging OgreRTShaderSystem
WANTLIB-main += OgreTerrain OIS SDL X11 Xcursor boost_filesystem-mt boost_system-mt
WANTLIB-main += boost_thread-mt c enet m ogg pthread stdc++ vorbisfile

RUN_DEPENDS-main=	${BASE_PKGPATH},-data \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS-main=	devel/mygui \
			devel/ois \
			net/enet \
			devel/sdl \
			audio/libvorbis \
			x11/ogre,-main>=1.8.1

MODULES=	devel/cmake
CFLAGS+=	-pthread

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
