# $OpenBSD$

COMMENT =		top view shooting game

DISTNAME =		violetland-v0.4.3-src
PKGNAME =		violetland-0.4.3

CATEGORIES =		games x11

HOMEPAGE =		http://code.google.com/p/violetland/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv3 / Creative Commons 3.0 BY-SA
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU ICE SDL SDL_image SDL_mixer SDL_ttf SM X11 Xext
WANTLIB += boost_filesystem-mt boost_system-mt c intl m pthread stdc++

MASTER_SITES =		http://violetland.googlecode.com/files/
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake
LIB_DEPENDS =		devel/boost \
			devel/gettext \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf
RUN_DEPENDS = 		devel/desktop-file-utils
	
CONFIGURE_ARGS = 	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

SEPARATE_BUILD =	simple

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/violetland.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
