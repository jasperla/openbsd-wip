# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

#ONLY_FOR_ARCHS =	???
SHARED_ONLY =		Yes

COMMENT =		ibrary for creating GUIs for games and 3D applications
# COMMENT-foo =		???	for multi packages

DISTNAME =		MyGUI_3.2.0
PKGNAME =		mygui-3.2.0
#PKGNAME-foo =		???	for multi packages

SHARED_LIBS +=		MyGUIEngine 0.0

CATEGORIES =		devel x11

HOMEPAGE =		http://mygui.info/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += OgreMain freetype m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=my-gui/}
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
LIB_DEPENDS =		x11/ogre,-main
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

CONFIGURE_ARGS += 	-DCMAKE_BUILD_TYPE=Release \
			-DMYGUI_BUILD_DEMOS=false \
			-DMYGUI_BUILD_TOOLS=false \
			-DCMAKE_SHARED_LINKER_FLAGS=-L${LOCALBASE}/lib

#NO_TEST =		Yes

# Add -pthread to trigger BOOST_HAS_THREADS.
CFLAGS +=		-pthread

#TEST_TARGET =		???

.include <bsd.port.mk>
