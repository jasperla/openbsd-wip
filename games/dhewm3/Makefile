# $OpenBSD$

SHARED_ONLY =		Yes

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open-source version of Doom 3

GITREV =		f8de73862e87de299ce76216c407344eac243b11
DISTNAME =		dhewm-dhewm3-f8de738
PKGNAME =		dhewm3-20130113

CATEGORIES =		games

HOMEPAGE =		https://github.com/dhewm/dhewm3

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += SDL c curl jpeg m ogg openal pthread stdc++ vorbis
WANTLIB += vorbisfile z

MASTER_SITES =		${HOMEPAGE}/tarball/${GITREV}/

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl \
			audio/openal \
			net/curl \
			audio/libvorbis \
			graphics/jpeg

NO_REGRESS =		Yes

WRKSRC =		${WRKDIST}/neo

CFLAGS +=		-I${X11BASE}/include \
			-DLINUX_DEFAULT_PATH=\\\"${TRUEPREFIX}/share/dhewm3\\\"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dhewm3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3/base
	${INSTALL_DATA} ${WRKBUILD}/*.so ${PREFIX}/share/dhewm3/base

.include <bsd.port.mk>
