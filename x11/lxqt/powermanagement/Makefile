# $OpenBSD$

COMMENT =	power management module for lxqt

VERSION =	0.13.0

NAME=		lxqt-powermanagement
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5IdleTime KF5Solid KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xdg Qt5XdgIconLoader Qt5Xml c lxqt m

LIB_DEPENDS +=		devel/kf5/kidletime \
			devel/kf5/solid \
			x11/qt5/qtsvg \
			x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			sysutils/upower

RUN_DEPENDS +=		devel/desktop-file-utils \
			sysutils/upower \
			x11/gtk+3,-guic \
			x11/lxqt/l10n,-powermanagement

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF
CONFIGURE_ENV +=	Qt5DBus_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5LinguistTools_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5Svg_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5X11Extras_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5Xml_DIR=${LOCALBASE}/lib/qt5/cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
