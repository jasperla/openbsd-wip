# $OpenBSD$

BROKEN-powerpc =	virtual memory exhausted (even with -O1)

COMMENT =	2D puzzle platform indie game
DISTNAME =	vvvvvv-2.2pl20200111
CATEGORIES =	games x11

GH_ACCOUNT =	TerryCavanagh
GH_PROJECT =	VVVVVV
GH_COMMIT =	901de4166e22d2795ead941de7d40a3e2444c2df

HOMEPAGE =	http://distractionware.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Custom, zlib like, not open source
PERMIT_PACKAGE =	Don't know...

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

CONFIGURE_ARGS =	-DENABLE_WARNINGS=OFF

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/desktop_version

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/VVVVVV ${PREFIX}/bin

.include <bsd.port.mk>
