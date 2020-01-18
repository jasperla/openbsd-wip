# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:15 sthen Exp $

COMMENT =		volleyball game with online play

GH_ACCOUNT =		danielknobe
GH_PROJECT =		blobbyvolley2
GH_COMMIT =		91e5dcd106e7a38da97b17e7aa1dae737da87829

DISTNAME =		blobby-1.020200118

CATEGORIES =		games

HOMEPAGE =		http://blobby.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} GL GLU SDL2 c m physfs

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost \
			archivers/zip
LIB_DEPENDS =		devel/sdl2 \
			devel/physfs

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
