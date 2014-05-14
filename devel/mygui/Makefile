# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT-main =		library for creating GUIs for games and 3D applications
COMMENT-demo =		MyGUI demos
COMMENT-tools = 	MyGUI tools

V = 			3.2.0
DISTNAME =		MyGUI_${V}
PKGNAME-main =		mygui-${V}
PKGNAME-demo =		mygui-demo-${V}
PKGNAME-tools = 	mygui-tools-${V}
MULTI_PACKAGES = 	-main -demo -tools

SHARED_LIBS +=		MyGUIEngine 0.0
SHARED_LIBS +=		MyGUI.OgrePlatform 0.0

CATEGORIES =		devel x11

HOMEPAGE =		http://mygui.info/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += OgreMain freetype m pthread stdc++
WANTLIB-demo += ${WANTLIB-main} MyGUIEngine MyGUI.OgrePlatform OIS boost_system-mt c
WANTLIB-tools += ${WANTLIB-demo}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=my-gui/}
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/ois
LIB_DEPENDS-main =	x11/ogre,-main
LIB_DEPENDS-demo = 	devel/mygui,-main \
			devel/ois
LIB_DEPENDS-tools = 	${LIB_DEPENDS-demo}

CONFIGURE_ARGS += 	-DCMAKE_BUILD_TYPE=Release \
			-DMYGUI_INSTALL_SAMPLES=true \
			-DMYGUI_INSTALL_TOOLS=true \
			-DCMAKE_SHARED_LINKER_FLAGS=-L${LOCALBASE}/lib

NO_TEST =		Yes

# Add -pthread to trigger BOOST_HAS_THREADS.
CFLAGS +=		-pthread

post-extract:
	rm ${WRKSRC}/CMake/Packages/FindFreetype.cmake

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMake/InstallResources.cmake \
		${WRKSRC}/Common/Base/Ogre/BaseManager.cpp

.include <bsd.port.mk>
