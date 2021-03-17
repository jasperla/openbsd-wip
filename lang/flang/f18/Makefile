# $OpenBSD$

COMMENT =	new LLVM Fortran compiler
DISTNAME =	f18-0.1.0pl20181010
CATEGORIES =	lang devel

GH_ACCOUNT =	flang-compiler
GH_PROJECT =	f18
GH_COMMIT =	498df684cf9e166cc636e8cea758854b55f13941

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0 (to become BSD when integrated into LLVM)
PERMIT_PACKAGE_CDROM =	Yes

# C++17
COMPILER =	base-clang ports-clang

# needs libLLVM-6.0.so
WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =	devel/cmake

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/llvm>=6.0,<6.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/f18/f18 ${PREFIX}/bin

.include <bsd.port.mk>
