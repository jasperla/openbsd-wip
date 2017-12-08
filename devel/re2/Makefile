# $OpenBSD$

V =		2017-06-01
COMMENT =	fast C++ regex library
DISTNAME =	re2-${V:S/-//g}
CATEGORIES =	devel

SHARED_LIBS +=	re2       0.0 # 0.0

HOMEPAGE =	https://github.com/google/re2
MAINTAINER =	Brian Callahan <bcallah@devio.us>

GH_ACCOUNT =	google
GH_PROJECT =	re2
GH_TAGNAME =	${V}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread

# Needs C++11
COMPILER =	gcc

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

pre-configure:
	sed -i 's,$${LIBre2_VERSION},${LIBre2_VERSION},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
