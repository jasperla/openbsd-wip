# $OpenBSD$

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Qt5SerialBus		0.0

WANTLIB-main =		${WANTLIB}
WANTLIB-main +=		Qt5Core Qt5Network Qt5SerialPort c m pthread

WANTLIB-examples =	GL Qt5Core Qt5Gui Qt5Network Qt5SerialBus Qt5SerialPort
WANTLIB-examples +=	Qt5Widgets c estdc++ m pthread

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<=${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
