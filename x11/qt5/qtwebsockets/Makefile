# $OpenBSD$

QT5NAME =		QtWebSockets
COMMENT-main =		Qt5 implementation of WebSocket protocol

SHARED_LIBS =		Qt5WebSockets		2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		Qt5Core Qt5Network Qt5Qml m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5WebSockets
WANTLIB-examples +=	c m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
