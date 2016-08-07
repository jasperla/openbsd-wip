# $OpenBSD$

QT5NAME =		QtConnectivity
COMMENT-main =		Bluetooth and NFC support for Qt5

SHARED_LIBS =		Qt5Bluetooth		2.0
SHARED_LIBS +=		Qt5Nfc			2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB-main +=		Qt5Quick m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Bluetooth Qt5Core Qt5Gui Qt5Network Qt5Nfc
WANTLIB-examples +=	Qt5Qml Qt5Quick Qt5Widgets c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
