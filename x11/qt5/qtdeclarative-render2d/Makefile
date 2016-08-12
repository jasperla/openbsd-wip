# $OpenBSD$

QT5NAME =		QtQuick2DRenderer
DISTNAME =		qtdeclarative-render2d-opensource-src-${DIST_VERSION}
COMMENT-main =		raster-based renderer for Qt5 Quick 2

MULTI_PACKAGES =	-main -qch -html

WANTLIB-main =  	${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS-main =	x11/qt5/qtmultimedia>=${VERSION:R},<${QT5_NEXT_VERSION}
LIB_DEPENDS-main =	x11/qt5/qtdeclarative>=${VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
