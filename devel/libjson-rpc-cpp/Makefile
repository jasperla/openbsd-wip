# $OpenBSD: $

COMMENT =	C++ framework for json-rpc (json remote procedure call)

GH_ACCOUNT =	cinemast
GH_PROJECT =	libjson-rpc-cpp
GH_TAGNAME =	v1.1.0

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  jsonrpccpp-client         0.0 # 1.0
SHARED_LIBS +=  jsonrpccpp-common         0.0 # 1.0
SHARED_LIBS +=  jsonrpccpp-server         0.0 # 1.0
SHARED_LIBS +=  jsonrpccpp-stub           0.0 # 1.0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} argtable2 c curl hiredis jsoncpp
WANTLIB += m microhttpd

# C++11
COMPILER =		base-clang ports-gcc ports-clang

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/catch2

LIB_DEPENDS =		databases/libhiredis \
			devel/argtable \
			devel/jsoncpp \
			www/libmicrohttpd \
			net/curl

CONFIGURE_ARGS =	-DCATCH_INCLUDE_DIR="${LOCALBASE}/include/catch/" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DWITH_COVERAGE:Bool=No

.include <bsd.port.mk>
