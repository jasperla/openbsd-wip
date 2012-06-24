# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open-source version of Doom 3

DISTNAME =		dhewm-dhewm3-4244436
PKGNAME =		dhewm3-20120624

CATEGORIES =		games

HOMEPAGE =		https://github.com/dhewm/dhewm3

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL SDL c curl jpeg m ogg openal pthread stdc++ vorbis
WANTLIB += vorbisfile

MASTER_SITES =		${HOMEPAGE}/tarball/master/

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl \
			audio/openal \
			net/curl \
			audio/libvorbis \
			graphics/jpeg

NO_REGRESS =		Yes

WRKSRC =		${WRKDIST}/neo

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dhewm3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dhewm3
	${INSTALL_DATA} ${WRKDIST}/base/default.cfg \
		${PREFIX}/share/examples/dhewm3

.include <bsd.port.mk>
