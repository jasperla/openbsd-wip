# $OpenBSD$

COMMENT =	a RISC-V ISA simulator
DISTNAME =	riscv-isa-sim-20200112
CATEGORIES =	devel

SHARED_LIBS +=	riscv-softfloat		0.0 # 0.0

GH_ACCOUNT =	riscv
GH_PROJECT =	riscv-isa-sim
GH_COMMIT =	bb1cd8f9e374f1730d131bfb68462c6133e4c107

HOMEPAGE =	https://github.com/riscv/riscv-isa-sim

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple

.include <bsd.port.mk>
