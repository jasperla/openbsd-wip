COMMENT =	portable and secure CLI utility to interact with Git forges

V =		1.0.3.1
DISTNAME =	gcli-${V}
CATEGORIES =	devel net
HOMEPAGE =	https://gitlab.com/herrhotzenplotz/gcli

MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

# BSD 2-clause
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://herrhotzenplotz.de/gcli/releases/gcli-${V}/

WANTLIB =	c curl nghttp3 ngtcp2_crypto_openssl ngtcp2 ssl crypto \
		nghttp2 z pthread

LIB_DEPENDS =	net/curl \
		net/ngtcp2 \
		www/nghttp2 \
		www/nghttp3

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
