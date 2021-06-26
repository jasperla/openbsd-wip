# $OpenBSD$

COMMENT =	fast header only JSON parser/generator for C++
HOMEPAGE =	https://rapidjson.org/
MAINTAINER =	Nick Gasson <nick@nickg.me.uk>
CATEGORIES =	devel

GH_ACCOUNT =	Tencent
GH_PROJECT =	rapidjson
GH_TAGNAME =	v1.1.0

MODULES =	devel/cmake

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-DRAPIDJSON_BUILD_DOC=NO -DRAPIDJSON_BUILD_EXAMPLES=NO

# Needs gtest source
NO_TEST =		Yes

.include <bsd.port.mk>
