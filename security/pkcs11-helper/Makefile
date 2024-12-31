COMMENT =		library with PKCS#11 providers for end-user applications
CATEGORIES =		security
DISTNAME =		pkcs11-helper-1.30.0

SHARED_LIBS =		pkcs11-helper	0.0	# 1.0

WANTLIB =		crypto pthread

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv2 or BSD
PERMIT_PACKAGE =	Yes

HOMEPAGE= 		https://github.com/OpenSC/${PKGSTEM}
SITES =			${HOMEPAGE}/releases/download/${DISTNAME}/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-crypto-engine-gnutls \
			--disable-crypto-engine-mbedtls \
			--disable-crypto-engine-nss \
			--disable-doc \
			--disable-static
LIBTOOL_FLAGS =		--tag=disable-static

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
