# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT-main =		library for creating GUIs for games and 3D applications
COMMENT-demo =		MyGUI demos
COMMENT-tools = 	MyGUI tools

V = 			3.2.2
GH_ACCOUNT = 		MyGUI
GH_PROJECT = 		mygui
GH_TAGNAME = 		MyGUI${V}
DISTNAME = 		mygui-${V}
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

WANTLIB-main += X11 OIS OgreMain boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB-main += boost_system-mt boost_thread-mt freetype m pthread stdc++
WANTLIB-demo += MyGUIEngine MyGUI.OgrePlatform c ${WANTLIB-main}
WANTLIB-tools += ${WANTLIB-demo}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/ois
LIB_DEPENDS-main =	x11/ogre,-main \
			devel/ois
LIB_DEPENDS-demo = 	devel/mygui,-main \
			devel/ois
LIB_DEPENDS-tools = 	${LIB_DEPENDS-demo}

CONFIGURE_ARGS += 	-DMYGUI_INSTALL_SAMPLES=true \
			-DMYGUI_INSTALL_TOOLS=true \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -fPIC"

NO_TEST =		Yes

post-extract:
	rm ${WRKSRC}/CMake/Packages/FindFreetype.cmake

.include <bsd.port.mk>
