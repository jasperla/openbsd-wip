COMMENT =		libupnp reimplementation in C++

DISTNAME =		libnpupnp-6.2.1

SHARED_LIBS =		npupnp	0.0

CATEGORIES =		net

HOMEPAGE =		https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/refdoc/html/index.html

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} curl expat m microhttpd

SITES =			https://www.lesbonscomptes.com/upmpdcli/downloads/

# -std=c++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

LIB_DEPENDS =		net/curl \
			www/libmicrohttpd

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
