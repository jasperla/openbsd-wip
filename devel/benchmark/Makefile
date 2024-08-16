COMMENT =	 	microbenchmark support library

DIST_TUPLE =		github	google	benchmark	v1.9.0	.

SHARED_LIBS =		benchmark	0.0
SHARED_LIBS +=		benchmark_main	0.0

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest
TEST_DEPENDS =		devel/gtest

CONFIGURE_ARGS =	-DBENCHMARK_ENABLE_WERROR=OFF \
			-DBENCHMARK_USE_BUNDLED_GTEST=OFF \
			-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DBENCHMARK_USE_LIBCXX=ON

# everything except tests
ALL_TARGET =		benchmark_main

# build whatever is left (84 C++ test files)
pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
