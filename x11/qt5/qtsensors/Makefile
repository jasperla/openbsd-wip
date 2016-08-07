# $OpenBSD$

QT5NAME =		QtSensors
COMMENT-main =		Qt5 hardware sensors support

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Qt5Sensors		2.0
SHARED_LIBS +=		gruesensor		2.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Qml m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sensors
WANTLIB-examples +=	Qt5Widgets c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
