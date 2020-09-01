# $OpenBSD$

COMMENT =	Portable Computing Language
CATEGORIES =	devel

SHARED_LIBS +=	OpenCL                    0.0 # 2.5.0

GH_ACCOUNT =	pocl
GH_PROJECT =	pocl
GH_TAGNAME =	v1.5

HOMEPAGE =	http://portablecl.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c clang-cpp hwloc m

# Must use clang
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake

LIB_DEPENDS =	devel/hwloc \
		devel/llvm

CONFIGURE_ARGS =	-DWITH_LLVM_CONFIG="${LOCALBASE}/bin/llvm-config"

.include <bsd.port.mk>
