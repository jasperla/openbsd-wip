# $OpenBSD$

QT5NAME =		QtQuickControls
COMMENT-main =		Qt Quick based UI controls

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB-main =	 	${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB-main +=		m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql
WANTLIB-examples +=	Qt5Widgets c m pthread

BUILD_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS-main =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}
RUN_DEPENDS-examples =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
