COMMENT =	modern ELF linker
DISTNAME =	mold-2.0.0pl20230812
CATEGORIES =	devel

GH_ACCOUNT =	rui314
GH_PROJECT =	mold
GH_COMMIT =	00a68c5fcf045be09504ea9ba3e2b7086f1e65c2

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m z zstd

# C++20
COMPILER =	base-clang

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/zstd

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
