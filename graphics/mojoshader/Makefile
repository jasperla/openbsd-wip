# $OpenBSD$

# HG_CHANGESET and HG_COMMIT must be kept in sync.
HG_CHANGESET =	1181
HG_COMMIT = 	b873f3b0f838
COMMENT =	library to move calls to Direct3D shaders to OpenGL
DISTNAME =	mojoshader-${HG_COMMIT}{${HG_COMMIT}}
PKGNAME =	mojoshader-${HG_CHANGESET}
CATEGORIES =	graphics

HOMEPAGE =	https://icculus.org/mojoshader/
MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

# How do I fetch from mercural repo? Or should host checkout tarball?
MASTER_SITES =	https://hg.icculus.org/icculus/mojoshader/archive/

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/re2c \
		devel/sdl2

TEST_DEPENDS =	security/p5-Digest-SHA1

WRKDIST =	${WRKDIR}/mojoshader-${HG_COMMIT}

pre-configure:
	sed -i -e 's,$${HG_CHANGESET},${HG_CHANGESET},g' \
		-e 's,$${HG_COMMIT},${HG_COMMIT},g' ${WRKSRC}/CMakeLists.txt

# No upstream install target
do-install:
	${INSTALL_DATA} ${WRKSRC}/mojoshader*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libmojoshader.a ${PREFIX}/lib

.include <bsd.port.mk>
