COMMENT =	modern interactive LLVM-based Fortran compiler

V =		0.57.0
DISTNAME =	lfortran-${V}

SHARED_LIBS +=	lfortran_runtime	0.0 # 0.0

CATEGORIES =	lang

HOMEPAGE =	https://www.lfortran.org/

# BSD
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/lfortran/lfortran/releases/download/v${V}/

WANTLIB +=	${COMPILER_LIBCXX} c execinfo m

MODULES =	devel/cmake

CONFIGURE_ARGS = -DWITH_LLVM=yes

.include <bsd.port.mk>
