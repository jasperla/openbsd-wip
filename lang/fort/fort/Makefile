# $OpenBSD$

COMMENT =	LLVM-based Fortran compiler
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}.0pl20180321

GH_PROJECT =	fort
GH_TAGNAME =	6.0

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm

RUN_DEPENDS =	lang/fort/libfortrt

# XXX: This is *required* for now (to get rid of -DNDEBUG)
MODCMAKE_DEBUG =	Yes

pre-configure:
	sed -i -e 's,$${CC},${CC},g' \
		-e 's,$${LOCALBASE},${LOCALBASE},g' \
			${WRKSRC}/tools/driver/Main.cpp

.include <bsd.port.mk>
