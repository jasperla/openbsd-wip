COMMENT =	modern ELF linker
CATEGORIES =	devel

GH_ACCOUNT =	rui314
GH_PROJECT =	mold
GH_TAGNAME =	v2.31.0

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

.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-DBLAKE3_NO_AVX512 -DBLAKE3_NO_AVX2 -DBLAKE3_NO_SSE41 -DBLAKE3_NO_SSE2
.endif

.include <bsd.port.mk>
