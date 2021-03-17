# $OpenBSD$

COMMENT =	open source engine remake for Cosmo's Cosmic Adventure
DISTNAME =	${GH_PROJECT}-0.0.0.20200706
CATEGORIES =	games x11

# No releases...
GH_ACCOUNT =	yuv422
GH_PROJECT =	cosmo-engine
GH_COMMIT =	77b081212fd1706775d9fe81e5156b6bda6b55bf

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer c m pthread

# C11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-mixer

NO_TEST =	Yes

# No install routine...
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cosmo_engine ${PREFIX}/bin

.include <bsd.port.mk>
