# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Ethereum C++ client

GH_ACCOUNT =	ethereum
GH_PROJECT =	cpp-ethereum
GH_COMMIT =	67a1590c14a13286afcfa62bbc8d5e66c5b36ba4
# Version from CMakeLists.txt
DISTNAME = cpp-ethereum-1.3.0

CATEGORIES =	productivity

HOMEPAGE =	http://cpp-ethereum.org

# GPLv3.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

LIB_DEPENDS =		net/curl \
			devel/jsoncpp \
			archivers/snappy \
			devel/cryptopp \
			databases/leveldb \
			www/microhttpd \
			net/miniupnp/miniupnpc


CONFIGURE_ARGS =	-DHUNTER_ENABLED:Bool=Off \
			-DJSONCPP_INCLUDE_DIR=${LOCALBASE}/include/jsoncpp/

.include <bsd.port.mk>
