# $OpenBSD:

COMMENT =	C++ library for interacting with JSON

GH_ACCOUNT =	open-source-parsers
GH_PROJECT =	jsoncpp
GH_TAGNAME =	1.8.0

SHARED_LIBS +=  jsoncpp                   0.0 # 1.8

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake \
		lang/python

CONFIGURE_ARGS =	-DBUILD_STATIC_LIBS=ON \
			-DBUILD_SHARED_LIBS=ON

# tests are in the build step
NO_TEST =	Yes

.include <bsd.port.mk>
