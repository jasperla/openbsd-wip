COMMENT =	client API for Matrix, built on libcurl
CATEGORIES =	devel

SHARED_LIBS +=  matrix_client             0.0 # 0.7.0

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	mtxclient
GH_TAGNAME =	v0.7.0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} coeurl crypto m olm ssl

MODULES =	devel/cmake

BUILD_DEPENDS = devel/json \
		devel/gtest \
		devel/libevent2 \
		devel/spdlog

LIB_DEPENDS =	devel/coeurl \
		devel/olm

# C++17
COMPILER =	base-clang ports-gcc

#NO_TEST =	Yes

.include <bsd.port.mk>
