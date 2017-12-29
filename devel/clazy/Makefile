# $OpenBSD:$

COMMENT =	Qt oriented code checker based on clang framework

GH_ACCOUNT =	KDE
GH_PROJECT =	clazy
GH_TAGNAME =	v1.3

CATEGORIES =	devel

SHARED_LIBS +=  clazylib                  0.0 # 0.1

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+ #XXX
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m z

COMPILER =		ports-clang

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/llvm
RUN_DEPENDS =		devel/llvm

CONFIGURE_ARGS =	-DCLAZY_BUILD_UTILS_LIB:Bool=ON \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
