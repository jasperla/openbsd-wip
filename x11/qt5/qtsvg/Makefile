# $OpenBSD$

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

SHARED_LIBS =		Qt5Svg			2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Widgets m pthread z

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Svg Qt5Widgets
WANTLIB-examples +=	c m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
