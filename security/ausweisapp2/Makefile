COMMENT =		official authentication app for German ID cards
CATEGORIES =		security x11

DISTNAME =		ausweisapp2-1.26.4
GH_ACCOUNT =		Governikus
GH_PROJECT =		AusweisApp2
GH_TAGNAME =		1.26.4

# EUPLv1.2
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.ausweisapp.bund.de/ausweisapp2/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		devel/http-parser \
			security/pcsc-lite

# optional, needs testing
#LIB_DEPENDS =		sysutils/libudev-openbsd

# Qt6 is the default, but we lack Qt6WebSockets
CONFIGURE_ARGS =	-DQt=Qt5

# wait for LibreSSL to support pre-shared keys...
#
# /usr/ports/pobj/ausweisapp2-1.26.4/AusweisApp2-1.26.4/cmake/tests/openssl.cpp:25:3:
#     error: RSA-PSK is required.

.include <bsd.port.mk>
