COMMENT =	modern ELF linker
DISTNAME =	mold-2.1.0pl20230813
CATEGORIES =	devel

GH_ACCOUNT =	rui314
GH_PROJECT =	mold
GH_COMMIT =	b018baec8a602cfc5b5d2c9bbe3898d33106fd94

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
