COMMENT =		fast JSON parser library in C++ using SIMD

DIST_TUPLE =		github	simdjson	simdjson	v3.10.0	.
CATEGORIES =		textproc

SHARED_LIBS =		simdjson	0.0

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://simdjson.org/

WANTLIB =		${COMPILER_LIBCXX} m

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
