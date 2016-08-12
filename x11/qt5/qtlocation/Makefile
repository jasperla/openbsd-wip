# $OpenBSD$

QT5NAME =		QtLocation
COMMENT-main =		Qt5 geo positioning APIs

SHARED_LIBS =		Qt5Location		1.0
SHARED_LIBS +=		Qt5Positioning		2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick
WANTLIB-main +=		m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Location
WANTLIB-examples +=	Qt5Positioning Qt5Quick Qt5Widgets c m pthread

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
