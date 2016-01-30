# $OpenBSD$

V =			1.2.1
COMMENT =		simple image viewer
DISTNAME =		imv-$V
CATEGORIES =		graphics x11
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_ttf c fontconfig freeimage pthread

GH_ACCOUNT =		eXeC64
GH_PROJECT =		imv
GH_TAGNAME =		v$V

# This will go away once upstream releases v1.2.0+
GH_TAGNAME =
GH_COMMIT =		7e1e553ba9fab75a5e2fb23337d0eba02593c820

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

.include <bsd.port.mk>
