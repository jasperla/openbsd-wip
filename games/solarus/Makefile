# $OpenBSD$

COMMENT =	open-source Zelda-like 2D game engine
DISTNAME =	solarus-1.0.1-src
PKGNAME =	solarus-1.0.1
CATEGORIES =	games x11

HOMEPAGE =	http://www.solarus-games.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL SDL_image SDL_ttf c m modplug ogg openal physfs
WANTLIB += pthread stdc++ vorbisfile ${MODLUA_WANTLIB}

MASTER_SITES =	http://www.solarus-games.org/downloads/solarus/

MODULES +=	devel/cmake \
		lang/lua

LIB_DEPENDS =	audio/libmodplug \
		audio/libvorbis \
		audio/openal \
		devel/physfs \
		devel/sdl-image \
		devel/sdl-ttf

WRKDIST =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
