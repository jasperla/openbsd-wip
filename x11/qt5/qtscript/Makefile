# $OpenBSD$

QT5NAME =		QtScript
COMMENT-main =		ECMAScript language for Qt5

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =	Qt5Script		2.0
SHARED_LIBS +=	Qt5ScriptTools		2.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Widgets m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Script Qt5ScriptTools Qt5Widgets
WANTLIB-examples +=	c m pthread

LIB_DEPENDS-examples =	${LIB_DEPENDS} \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
