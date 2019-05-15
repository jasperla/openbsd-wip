# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $

COMMENT =	futuristic, fast-paced first person shooter

DISTNAME =	warsow_21_sdk
PKGNAME =	warsow-2.1.2

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

CFLAGS +=	-I${X11BASE}/include
WRKSRC =	${WRKDIST}/source/source

# Search directory provided by warsow-data port instead of current (doing
# so allows us not to install any wrapper scripts)
post-patch:
	/usr/bin/sed -i'' -e \
		's|path", "\.|path", "${LOCALBASE}/share/warsow|' \
		${WRKSRC}/qcommon/files.c

do-install:
.for b in warsow wsw_server wswtv_server
	${INSTALL_PROGRAM} ${WRKSRC}/build/${b} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/warsow
	${INSTALL_DATA_DIR} ${PREFIX}/share/warsow/basewsw
	${INSTALL_DATA_DIR} ${PREFIX}/share/warsow/libs
.for l in cgame game
	${INSTALL_DATA} ${WRKSRC}/build/basewsw/lib${l}.so \
		${PREFIX}/share/warsow/basewsw
.endfor
.for l in angelwrap cin ftlib irc ref_gl snd_openal snd_qf steamlib ui
	${INSTALL_DATA} ${WRKSRC}/build/libs/lib${l}.so \
		${PREFIX}/share/warsow/libs
.endfor

.include <bsd.port.mk>
