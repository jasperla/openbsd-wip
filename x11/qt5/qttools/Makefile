# $OpenBSD$

QT5NAME =		QtTools
COMMENT-main =		Qt development tools

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5CLucene		2.0
SHARED_LIBS +=	Qt5Designer		2.0
SHARED_LIBS +=	Qt5DesignerComponents	2.0
SHARED_LIBS +=	Qt5Help			2.0

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB-main += Qt5Sql Qt5Widgets Qt5Xml c m pthread

WANTLIB-examples =  ${WANTLIB}
WANTLIB-examples += GL Qt5Core Qt5Gui Qt5Help Qt5Widgets c m pthread

MODQT5_DEPS =		No
LIB_DEPENDS-main =	x11/qt5/qtbase,-main>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
