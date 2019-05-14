# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $

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

MASTER_SITES =	http://sebastian.network/warsow/ \
		http://slice.sh/warsow/

MODULES =	devel/cmake

RUN_DEPENDS =	audio/openal \
		devel/desktop-file-utils \
		games/warsow-data
LIB_DEPENDS =	audio/libvorbis \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		multimedia/libtheora \
		net/curl

CONFIGURE_ARGS =	-DQFUSION_GAME=Warsow

WRKSRC =	${WRKDIST}/source/source

post-patch:
# Search directory provided by warsow-data port instead of current (doing
# so allows us not to install any wrapper scripts)
	/usr/bin/sed -i'' -e \
		's|path", "\.|path", "${LOCALBASE}/share/warsow|' \
		${WRKSRC}/qcommon/files.c

do-install:
.for b in warsow wsw_server wswtv_server
	${INSTALL_PROGRAM} ${WRKSRC}/build/${b} ${PREFIX}/bin
.endfor
	mkdir ${PREFIX}/share/warsow
	mkdir ${PREFIX}/share/warsow/basewsw
	mkdir ${PREFIX}/share/warsow/libs
.for l in cgame game
	${INSTALL_DATA} ${WRKSRC}/build/basewsw/lib${l}.so \
		${PREFIX}/share/warsow/basewsw/lib${l}_openbsd_${ARCH}.so
.endfor
.for l in angelwrap cin ftlib irc ref_gl snd_openal snd_qf steamlib ui
	${INSTALL_DATA} ${WRKSRC}/build/libs/lib${l}.so \
		${PREFIX}/share/warsow/libs/lib${l}_openbsd_${ARCH}.so
.endfor

.include <bsd.port.mk>
