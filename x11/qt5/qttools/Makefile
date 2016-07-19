# $OpenBSD$

DISTNAME =		qttools-opensource-src-${DIST_VERSION}
COMMENT-main =		Qt tools
COMMENT-examples =	Qt tools development examples

PKGNAME-main =		${PKGNAME}
PKGNAME-examples =	qttools-examples-${VERSION}

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

MODULES =		x11/qt5 devel/qmake
MODQT5_NO_TOOLS_DEP =	Yes

LIB_DEPENDS-examples =	${BASE_PKGPATH},-main

.include <bsd.port.mk>
