# $OpenBSD$

COMMENT =	C/C++/ObjC language server
HOMEPAGE =	https://github.com/MaskRay/ccls
MAINTAINER =	Nick Gasson <nick@nickg.me.uk>
CATEGORIES =	devel

GH_ACCOUNT =	MaskRay
GH_PROJECT =	ccls
GH_TAGNAME =	0.20201219

MODULES =	devel/cmake

# Apache 2.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/rapidjson devel/llvm devel/clang-tools-extra
RUN_DEPENDS =		devel/llvm

WANTLIB = 		c m pthread ${COMPILER_LIBCXX}

CONFIGURE_ARGS =	-DUSE_SYSTEM_RAPIDJSON=ON

.include <bsd.port.mk>
