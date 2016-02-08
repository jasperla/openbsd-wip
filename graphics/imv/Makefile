# $OpenBSD$

GH_ACCOUNT =		eXeC64
GH_PROJECT =		imv
GH_TAGNAME =		v2.0.0

COMMENT =		simple image viewer
CATEGORIES =		graphics x11
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_ttf c fontconfig freeimage pthread

MODULES =		lang/clang
MODCLANG_ARCHS =	*
LIB_DEPENDS =		devel/sdl2 \
			devel/sdl2-ttf \
			graphics/freeimage
MAKE_FLAGS +=		V=1 BUILDDIR="${WRKDIR}/build-${ARCH}"
FAKE_FLAGS +=		$(MAKE_FLAGS) MANPREFIX=${PREFIX}/man PREFIX=${PREFIX}

USE_GMAKE =		Yes

.if !empty(DEBUG)
ALL_TARGET =		debug
.else
ALL_TARGET =		${WRKDIR}/build-${ARCH}/imv
.endif

TEST_TARGET =		check

.include <bsd.port.mk>
