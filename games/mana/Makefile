# $OpenBSD$

COMMENT =	client for The Mana World and similar servers
DISTNAME =	mana-0.6.1
CATEGORIES =	games x11

HOMEPAGE =	http://www.manasource.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB += SM X11 Xext c curl guichan guichan_sdl m physfs png
WANTLIB += pthread stdc++ xml2 z

MASTER_SITES =	http://files.manasource.org/

MODULES =	devel/cmake \
		devel/gettext

LIB_DEPENDS =	devel/guichan \
		devel/physfs \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		net/curl \
		textproc/libxml

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DENABLE_CPP0X=0

NO_TEST =	Yes

.include <bsd.port.mk>
