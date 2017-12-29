# $OpenBSD:

COMMENT =	Qt oriented code checker based on clang framework
#
GH_ACCOUNT =	KDE
GH_PROJECT =	clazy
GH_TAGNAME =	v1.3

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+ #XXX
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		ports-clang

MODULES =		devel/cmake

LIB_DEPENDS =		devel/llvm

CONFIGURE_ARGS =	-DCLAZY_BUILD_UTILS_LIB:Bool=ON \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
