COMMENT =	alternative Discord client made with C++ and Qt6 Widgets

V =		0.0.0
PKGNAME =	acheron-${V}pl20261006

DIST_TUPLE +=	github ouwou acheron \
		e0191a1696e72c800c629527dbec5e0671ff654e .
DIST_TUPLE +=	github google emoji-segmenter \
		1cada87c62550446fca6a42a69743688b4539a4c \
		vendor/emoji-segmenter
DIST_TUPLE +=	github discord libdave \
		52cd56dc550f447fb354b3a06c9e2d2e2a4309c6 \
		vendor/libdave
DIST_TUPLE +=	github mackron miniaudio \
		13d161bc8d856ad61ae46b798bbeffc0f49808e8 \
		vendor/miniaudio
DIST_TUPLE +=	github cisco mlspp \
		92aaa4134fa45ec39957a7c81a342401fba7feb2 \
		vendor/mlspp
DIST_TUPLE +=	github nayuki QR-Code-generator \
		720f62bddb7226106071d4728c292cb1df519ceb \
		vendor/qrcodegen

CATEGORIES =	net x11

HOMEPAGE =	https://github.com/ouwou/acheron

MAINTAINER =	izzy Meyer <izder456@disroot.org>


# GPLv3+, emoji-segmenter Apache, libdave MIT, miniaudio MIT,
# mlspp 2BSD, QR-Code-generator MIT
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Sql Qt6Widgets c crypto curl m
WANTLIB += qt6keychain z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			x11/qt6/qttools
LIB_DEPENDS =		net/curl \
			security/qtkeychain,qt6 \
			x11/qt6/qtbase \
			x11/qt6/qtsvg
			

CONFIGURE_ARGS =	-DUSE_VCPKG=0 -DENABLE_LOTTIE=0 \
			-DALLOW_PLAIN_CURL=1

# mlspp currently broken with libressl
CONFIGURE_ARGS +=	-DENABLE_VOICE=0

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
