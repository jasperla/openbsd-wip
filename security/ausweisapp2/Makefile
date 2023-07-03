COMMENT =		official app for german ID cards and residence permits
CATEGORIES =		security x11

DISTNAME =		ausweisapp2-1.26.4
GH_ACCOUNT =		Governikus
GH_PROJECT =		AusweisApp2
GH_TAGNAME =		1.26.4

# EUPLv1.2
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.ausweisapp.bund.de/ausweisapp2/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5QmlWorkerScript Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5WebSockets Qt5Widgets c http_parser m pcsclite

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt5

# /usr/ports/pobj/ausweisapp2-1.26.4/AusweisApp2-1.26.4/cmake/tests/openssl.cpp:25:3:
#     error: RSA-PSK is required.
BUILD_DEPENDS +=	security/openssl/1.1

LIB_DEPENDS =		devel/http-parser \
			security/pcsc-lite \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtsvg \
			x11/qt5/qtwebsockets

# Qt6 is the default, but we lack Qt6WebSockets
CONFIGURE_ARGS =	-DQt=Qt5

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

.include <bsd.port.mk>
