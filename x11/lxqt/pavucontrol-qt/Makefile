# $OpenBSD$

COMMENT =	pulseaudio mixer in qt

VERSION =	0.4.0

NAME=		pavucontrol-qt
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c glib-2.0 intl m pulse-mainloop-glib pulse

LIB_DEPENDS +=		x11/qt5/qtbase \
			audio/pulseaudio

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-pavucontrol-qt \
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF
CONFIGURE_ENV +=	Qt5Widgets_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5LinguistTools_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5DBus_DIR=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
