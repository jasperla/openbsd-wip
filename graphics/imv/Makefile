# $OpenBSD$

V =			1.2.0
COMMENT =		simple image viewer
DISTNAME =		imv-$V
CATEGORIES =		graphics x11
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_ttf c fontconfig freeimage inotify pthread

GH_ACCOUNT =		eXeC64
GH_PROJECT =		imv
GH_TAGNAME =		v$V

MODULES =		lang/clang
MODCLANG_ARCHS =	*
LIB_DEPENDS =		devel/libinotify \
			devel/sdl2 \
			devel/sdl2-ttf \
			graphics/freeimage
MAKE_FLAGS =		prefix=${PREFIX}

USE_GMAKE =		Yes

.if !empty(DEBUG)
ALL_TARGET =		debug
.else
ALL_TARGET =		imv
.endif

.include <bsd.port.mk>
