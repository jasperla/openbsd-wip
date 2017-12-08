# $OpenBSD$

# Problems with big endian.
NOT_FOR_ARCHS =	${BE_ARCHS}

V =		1.1
COMMENT =	language with focus on expressiveness and type safety
DISTNAME =	lily-${V}
CATEGORIES =	lang

SHARED_LIBS +=	lily                      0.0 # 0.0

GH_ACCOUNT =	FascinatedBox
GH_PROJECT =	lily
GH_TAGNAME =	v${V}

HOMEPAGE =	https://fascinatedbox.github.io/lily-site/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	devel/cmake

pre-configure:
	sed -i 's,-O2,,g' ${WRKSRC}/CMakeLists.txt
	sed -i 's,$${LIBlily_VERSION},${LIBlily_VERSION},g' \
		${WRKSRC}/src/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lily
	${INSTALL_DATA} ${WRKSRC}/try/*.lily ${PREFIX}/share/examples/lily

# Test program gets built during make build.
do-test:
	cd ${WRKSRC} && ${WRKBUILD}/pre-commit-tests

.include <bsd.port.mk>
