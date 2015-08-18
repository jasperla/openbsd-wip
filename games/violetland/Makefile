# $OpenBSD$

COMMENT =		top view shooting game

DISTNAME =		violetland-v0.4.3-src
PKGNAME =		violetland-0.4.3

CATEGORIES =		games x11

HOMEPAGE =		https://code.google.com/p/violetland/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3 / Creative Commons 3.0 BY-SA
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SDL_image SDL_mixer SDL_ttf SM X11 Xext
WANTLIB += boost_filesystem-mt boost_system-mt c intl m pthread stdc++

MASTER_SITES =		https://violetland.googlecode.com/files/
EXTRACT_SUFX =		.zip

MODULES =		devel/gettext devel/cmake
LIB_DEPENDS =		devel/boost \
			devel/gettext \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf
RUN_DEPENDS = 		devel/desktop-file-utils

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/violetland.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/icon-light.png ${PREFIX}/share/pixmaps/violetland.png

.include <bsd.port.mk>
