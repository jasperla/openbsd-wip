# $OpenBSD$

COMMENT =	new LLVM Fortran compiler
DISTNAME =	f18-0.1.0pl20180907
CATEGORIES =	lang devel

GH_ACCOUNT =	flang-compiler
GH_PROJECT =	f18
GH_COMMIT =	804e7359134a6bf724d27085931608cc9297dbe0

WANTLIB += ${COMPILER_LIBCXX}

# Apache 2.0 (to become BSD when integrated into LLVM)
PERMIT_PACKAGE_CDROM =	Yes

# C++17
# YOU CANNOT BUILD THIS!
# I KEEP A COPY OF g++-8.2.0 TO BUILD THIS.
# ASK ME FOR THE BINARIES, OR WAIT UNTIL OUR LIBC++
# IS UPDATED TO A NEWER VERSION WITH C++17 SUPPORT!
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm

.include <bsd.port.mk>
