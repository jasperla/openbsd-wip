# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:15 sthen Exp $

COMMENT =		volleyball game with online play

GH_ACCOUNT =		danielknobe
GH_PROJECT =		blobbyvolley2
GH_COMMIT =		bcea5be5eae91fda5455e7b77d9057d2780cc752

DISTNAME =		blobby-1.020200119

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
