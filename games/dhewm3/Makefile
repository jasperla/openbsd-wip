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

CFLAGS +=		-DLINUX_DEFAULT_PATH=\\\"${TRUEPREFIX}/share/dhewm3\\\"

.if ${MACHINE_ARCH} == "amd64"
A =	amd64
.else
A =	x86
.endif
SUBST_VARS +=		A

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dhewm3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3
	${INSTALL_DATA_DIR} ${PREFIX}/share/dhewm3/base
	${INSTALL_DATA} ${WRKBUILD}/game${A}.so ${PREFIX}/share/dhewm3/base

.include <bsd.port.mk>
