COMMENT =	 	microbenchmark support library
GH_ACCOUNT =		google
GH_PROJECT =		benchmark
GH_TAGNAME =		v1.8.2

SHARED_LIBS +=		benchmark	0.0	# 0.0
SHARED_LIBS +=		benchmark_main	0.0	# 0.0

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DBENCHMARK_ENABLE_WERROR=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=On

# XXX can't find gtest (yet)
CONFIGURE_ARGS +=	-DBENCHMARK_ENABLE_TESTING=OFF

.include <bsd.port.mk>
