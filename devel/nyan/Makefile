# $OpenBSD$

COMMENT =	data description language
CATEGORIES =	devel

SHARED_LIBS +=	nyan                      0.0 # 0.1

GH_ACCOUNT =	SFTtech
GH_PROJECT =	nyan
GH_TAGNAME =	v0.1.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo m

COMPILER=	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/libexecinfo

# Linker flags line because of -Wl,--no-undefined
CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} -lc"

# This gets mistakenly picked up as an include by the compiler.
post-extract:
	rm -f ${WRKSRC}/version

.include <bsd.port.mk>
