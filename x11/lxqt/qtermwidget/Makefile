# $OpenBSD$

COMMENT =	the terminal widget for QTerminal

VERSION =	0.9.0

NAME=		qtermwidget
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  qtermwidget5              0.0 # 0.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

LIB_DEPENDS +=		x11/qt5/qtbase

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-qtermwidget

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF
CONFIGURE_ENV +=	Qt5Widgets_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5LinguistTools_DIR=${LOCALBASE}/lib/qt5/cmake

.include <bsd.port.mk>
