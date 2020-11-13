# $OpenBSD$

V =		2020-11-01
COMMENT =	fast C++ regex library
DISTNAME =	re2-${V:S/-//g}
CATEGORIES =	devel

SHARED_LIBS +=	re2       0.0 # 0.0

HOMEPAGE =	https://github.com/google/re2
MAINTAINER =	Brian Callahan <bcallah@devio.us>

GH_ACCOUNT =	google
GH_PROJECT =	re2
GH_TAGNAME =	${V}

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m pthread

MODULES =	devel/cmake

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=Yes

# Needs C++11
COMPILER =	base-clang ports-gcc

.include <bsd.port.mk>
