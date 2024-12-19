COMMENT =		SVG-based theme engine for Qt5 and KDE 

V =			1.1.2
PKGNAME =		kvantum-qt5-$V

DIST_TUPLE +=		github tsujan Kvantum V${V} .

CATEGORIES =		x11

HOMEPAGE =		https://github.com/tsujan/Kvantum

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

WANTLIB +=		${COMPILER_LIBCXX} ICE KF5WindowSystem Qt5Core Qt5Gui
WANTLIB +=		Qt5Svg Qt5Widgets Qt5X11Extras SM X11 Xext m

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules
LIB_DEPENDS =		devel/kf5/kwindowsystem \
			x11/qt5/qtbase \
			x11/qt5/qtsvg
RUN_DEPENDS =		x11/kvantum \
			x11/gtk+4,-guic \
			devel/desktop-file-utils

CONFIGURE_ARGS =	-DKF5WindowSystem_DIR="${LOCALBASE}/lib/cmake/KF5WindowSystem/" \
			-DQt5_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5/" \
			-DCMAKE_INSTALL_PREFIX="${LOCALBASE}" \
			-DENABLE_QT5=ON

WRKSRC =		${WRKDIST}/Kvantum

do-install:
	cmake --install ${WRKBUILD}/style

.include <bsd.port.mk>
