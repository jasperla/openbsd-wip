COMMENT =		SVG-based theme engine for Qt and KDE 

V =			1.1.2
PKGNAME =		kvantum-$V

DIST_TUPLE +=		github tsujan Kvantum V${V} .

CATEGORIES =		x11

HOMEPAGE =		https://github.com/tsujan/Kvantum

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

WANTLIB +=		${COMPILER_LIBCXX} GL ICE KF6WindowSystem Qt6Core Qt6Gui
WANTLIB +=		Qt6Svg Qt6Widgets SM X11 Xext c m

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules
LIB_DEPENDS =		devel/kf6/kwindowsystem \
			x11/qt6/qtbase \
			x11/qt6/qtsvg
RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

CONFIGURE_ARGS =	-DKF6WindowSystem_DIR="${LOCALBASE}/lib/cmake/KF6WindowSystem/" \
			-DQt6_DIR="${LOCALBASE}/lib/qt6/cmake/Qt6/" \
			-DCMAKE_INSTALL_PREFIX="${LOCALBASE}"

WRKSRC =		${WRKDIST}/Kvantum

.include <bsd.port.mk>
