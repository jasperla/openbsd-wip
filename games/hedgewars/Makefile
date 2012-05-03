# $OpenBSD$

COMMENT =		Worms-like strategy game

V =			0.9.17
DISTNAME =		hedgewars-src-${V}
PKGNAME =		hedgewars-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.hedgewars.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += QtGui QtNetwork SDL SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB += c lua m pthread stdc++ z

MASTER_SITES =		http://download.gna.org/hedgewars/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4 \
			lang/lua
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-ttf \
			devel/sdl-net \
			devel/sdl-mixer

NO_REGRESS =		Yes

.include <bsd.port.mk>
