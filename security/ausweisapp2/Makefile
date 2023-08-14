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

WANTLIB +=

# C++20
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt6

# ${WRKSRC}/cmake/tests/openssl.cpp:25:3:	error: RSA-PSK is required.
BUILD_DEPENDS +=	security/openssl/1.1

LIB_DEPENDS =		devel/http-parser \
			security/pcsc-lite \
			x11/qt6/qtdeclarative \
			x11/qt6/qtscxml \
			x11/qt6/qtsvg \
			x11/qt6/qtwebsockets \
			x11/qt6/qtshadertools

# XXX cmake/Libraries.cmake L178 fails to find Qt6 which fails to find OpenGL...

# does not find it, uses bundled 2.9.4 instead
#LIB_DEPENDS +=		devel/http-parser
#WANTLIB +=		http_parser

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# XXX pcsclite is detected with pkg-config, but its -I and -L are ignored
CONFIGURE_ARGS +=       -DCMAKE_EXE_LINKER_FLAGS=-L/usr/local/lib

.include <bsd.port.mk>
