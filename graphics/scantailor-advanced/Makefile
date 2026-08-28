COMMENT =		post-processing tool for scanned pages

DISTNAME =		scantailor-1.2.1
CATEGORIES =		graphics

# GPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		ScanTailor-Advanced
GH_PROJECT =		scantailor-advanced
GH_TAGNAME =		v1.2.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += c jpeg m png pthread tiff z

BUILD_DEPENDS +=        devel/boost x11/qt6/qttools

LIB_DEPENDS +=		x11/qt6/qtbase x11/qt6/qtsvg \
			graphics/jpeg graphics/png graphics/tiff

MODULES =		devel/cmake x11/qt6

CMAKE_ARGS +=		-DCMAKE_PREFIX_PATH=${MODQT6_QTDIR}

.include <bsd.port.mk>
