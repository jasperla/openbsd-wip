# $OpenBSD$

COMMENT =		C library for EC operations on curve secp256k1
DISTNAME =		secp256k1-0.2
GH_ACCOUNT =		bitcoin
GH_PROJECT =		secp256k1
GH_COMMIT =		a1102b12196ea27f44d6201de4d25926a2ae9640

SHARED_LIBS +=  	secp256k1                 0.2 # 0.0

CATEGORIES =		security

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--enable-module-ecdh \
			--enable-module-recovery \
			--enable-module-extrakeys \
			--enable-module-schnorrsig \
			--enable-experimental
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./autogen.sh

.include <bsd.port.mk>
