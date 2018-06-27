# $OpenBSD$

COMMENT =	image viewer and screenshot tool for lxqt

VERSION =	0.7.0

NAME=		lximage-qt
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += Xfixes c exif fm fm-qt gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 intl m menu-cache xcb Qt5Svg

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/qt5/qtsvg \
			x11/lxqt/libfm-qt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-lximage-qt \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF
CONFIGURE_ENV +=	Qt5Widgets_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5Network_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5DBus_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5PrintSupport_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5LinguistTools_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5X11Extras_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5Svg_DIR=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
