# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	futuristic, fast-paced first person shooter

DISTNAME =	warsow_21_sdk
PKGNAME =	warsow-2.1

CATEGORIES =	games

HOMEPAGE =	https://warsow.net/

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c curl freetype
WANTLIB += jpeg m ogg png theoradec vorbis vorbisfile z

MASTER_SITES =	http://slice.sh/warsow/

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		games/warsow-data
LIB_DEPENDS =	audio/libvorbis \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		multimedia/libtheora \
		net/curl

CFLAGS +=	-I/usr/local/include/SDL
CONFIGURE_ARGS =	-DQFUSION_GAME=Warsow

WRKSRC =	${WRKDIST}/source/source

do-install:
.for b in warsow wsw_server wswtv_server
	${INSTALL_PROGRAM} ${WRKSRC}/build/${b} ${PREFIX}/bin
.endfor
	mkdir ${PREFIX}/share/warsow
	mkdir ${PREFIX}/share/warsow/basewsw
	mkdir ${PREFIX}/share/warsow/libs
	${INSTALL_DATA} ${WRKSRC}/build/basewsw/* \
		${PREFIX}/share/warsow/basewsw/
	${INSTALL_DATA} ${WRKSRC}/build/libs/* \
		${PREFIX}/share/warsow/libs

.include <bsd.port.mk>
