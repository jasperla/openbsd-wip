ONLY_FOR_ARCHS =	i386 amd64

COMMENT              =	3d, first person roguelike.

DISTNAME             =	barony
V                    =  2.0.5

GH_ACCOUNT           =	turningwheel
GH_PROJECT           =	barony
GH_TAGNAME           =	v2.0.5

CATEGORIES           =	games

HOMEPAGE             =	http://www.baronygame.com

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU c m

MODULES              =  devel/cmake

CFLAGS               =	-g -O2
CXXFLAGS             =  -g -O2
WRKDIST =		${WRKDIR}/Barony-${V}

.include <bsd.port.mk>
