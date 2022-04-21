COMMENT =	client API for Matrix, built on libcurl
CATEGORIES =	devel

GH_ACCOUNT =	Nheko-Reborn
GH_PROJECT =	mtxclient
GH_TAGNAME =	v0.7.0

# MIT
PERMIT_PACKAGE =	Yes

#WANTLIB += ${COMPILER_LIBCXX} m

MODULES =	devel/cmake

LIB_DEPENDS =	devel/coeurl \
		devel/json \
		devel/spdlog \
		devel/olm \

BUILD_DEPENDS =	devel/gtest

# C++11
COMPILER =	base-clang ports-gcc

#NO_TEST =	Yes

.include <bsd.port.mk>
