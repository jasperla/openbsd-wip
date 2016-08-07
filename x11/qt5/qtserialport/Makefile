# $OpenBSD$

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =	Qt5SerialPort		2.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		m pthread Qt5Core

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL c m pthread Qt5Core Qt5Gui Qt5SerialPort Qt5Widgets

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
