# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		real time strategy game inspired by Dungeon Keeper

V =			0.7.1
DISTNAME =		opendungeons-$V

CATEGORIES =		games

HOMEPAGE =		https://opendungeons.github.io/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += CEGUIBase-0 CEGUIOgreRenderer-0 OIS OgreMain OgreOverlay
WANTLIB += OgreRTShaderSystem boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_system-mt boost_thread-mt
WANTLIB += c m pthread sfml-audio sfml-network sfml-system

GH_ACCOUNT =		OpenDungeons
GH_PROJECT =		OpenDungeons
GH_TAGNAME =		$V

MODULES =		devel/cmake \
			lang/clang
MODCLANG_LANGS =	c++
MODCLANG_ARCHS =	*
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/ois \
			multimedia/sfml \
			x11/cegui \
			x11/ogre

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include -pthread"

NO_TEST =		Yes

.include <bsd.port.mk>
