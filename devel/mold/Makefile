COMMENT =	modern ELF linker
DISTNAME =	mold-2.1.0pl20230816
CATEGORIES =	devel

GH_ACCOUNT =	rui314
GH_PROJECT =	mold
GH_COMMIT =	c105cfd35aeb4b231c2343394007bf66b1c721c7

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# mold: MIT
# Third-party:
#   blake3: CC0 1.0
#   rust-demangle: MIT
#   TBB: Apache 2.0
#   xxhash: BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z zstd

# C++20
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/zstd

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
