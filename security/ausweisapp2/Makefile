COMMENT =		official app for german ID cards and residence permits
CATEGORIES =		security x11

V =			1.26.7
DISTNAME =		AusweisApp2-${V}

# EUPLv1.2
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.ausweisapp.bund.de/ausweisapp2/
SITES =			https://github.com/Governikus/AusweisApp/releases/download/${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5QmlWorkerScript Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5WebSockets Qt5Widgets c m pcsclite udev

# C++20
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt5

# ${WRKSRC}/cmake/tests/openssl.cpp:25:3:	error: RSA-PSK is required.
BUILD_DEPENDS +=	security/openssl/1.1

LIB_DEPENDS =		security/pcsc-lite \
			sysutils/libudev-openbsd \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtsvg \
			x11/qt5/qtwebsockets

# does not find it, uses bundled 2.9.4 instead
#LIB_DEPENDS +=		devel/http-parser
#WANTLIB +=		http_parser

# Qt6 is the default, but fails to configure
CONFIGURE_ARGS =	-DQt=Qt5 \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# XXX pcsclite is detected with pkg-config, but its -I and -L are ignored
CONFIGURE_ARGS +=       -DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/lib

.include <bsd.port.mk>
