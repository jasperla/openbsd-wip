COMMENT =		fast JSON parser library in C++ using SIMD

DIST_TUPLE =		github	simdjson	simdjson	v3.12.0	.

CATEGORIES =		textproc

SHARED_LIBS =		simdjson	0.0

# Apache 2.0
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://simdjson.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB =		${COMPILER_LIBCXX} m

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python \
			lang/ruby
MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =		shells/bash
TEST_DEPENDS =		shells/bash

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# Tests require CPM and more to be fetched.

.include <bsd.port.mk>
