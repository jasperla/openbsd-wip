# $OpenBSD$

COMMENT =	quick and powerful image editor
CATEGORIES =	graphics x11

GH_ACCOUNT =	PhotoFlare
GH_PROJECT =	photoflare
GH_TAGNAME =	v1.5.8.1

HOMEPAGE =	https://photoflare.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GraphicsMagick++ Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Widgets c m

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	graphics/GraphicsMagick

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# How do you override QMAKE_* ?
CXXFLAGS +=	-I${LOCALBASE}/include/GraphicsMagick
LDFLAGS +=	-L${LOCALBASE}/lib -lGraphicsMagick++

NO_TEST =	Yes

.include <bsd.port.mk>
