# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		Worms-like strategy game

V =			0.9.18
DISTNAME =		hedgewars-src-${V}-3
PKGNAME =		hedgewars-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.hedgewars.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtGui QtNetwork SDL SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB += avcodec avformat avutil c lua5.1 m png pthread stdc++
WANTLIB += z

MASTER_SITES =		http://download.gna.org/hedgewars/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4 \
			lang/lua
USE_NINJA =		No
BUILD_DEPENDS =		lang/fpc
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-ttf \
			devel/sdl-net \
			devel/sdl-mixer \
			graphics/ffmpeg

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/hedgewars-src-$V

.include <bsd.port.mk>
