COMMENT =		fast JSON parser library in C++ using SIMD

DIST_TUPLE =		github	simdjson	simdjson	v3.10.1	.

# ${WRKSRC}/dependencies/{import.cmake,CMakeLists.txt}
DATA_COMMIT =		a5b13babe65c1bba7186b41b43d4cbdc20a5c470
DIST_TUPLE +=		github	simdjson	simdjson-data	${DATA_COMMIT} \
				dependencies/.cache/simdjson-data/

CATEGORIES =		textproc

SHARED_LIBS =		simdjson	0.0

# MIT
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
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DSIMDJSON_ALLOW_DOWNLOADS=OFF \
			-DSIMDJSON_DEVELOPER_MODE=ON

# everything but tests
ALL_TARGET =		simdjson

pre-test:
	# build whatever is left (ca. 161 C++ test files)
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
