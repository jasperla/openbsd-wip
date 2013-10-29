# $OpenBSD$

ONLY_FOR_ARCHS =	i386 amd64

COMMENT-main =          warsow client (fast paced FPS game)
COMMENT-server =        warsow server
COMMENT-data =          warsow data for client/server

CATEGORIES =		games x11
MAINTAINER=		Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES =        -main -server -data

N =			warsow
V =			1.03
V_DATA =		1.02
PKGNAME-main =		${N}-${V}
PKGNAME-server =	${N}-server-${V}
PKGNAME-data =		${N}-data-${V_DATA}

PKG_ARCH-data =		i386,amd64

DISTNAME =		${N}_${V}
DISTNAME_DATA =		${N}_${V_DATA}
DISTFILES =		${DISTNAME}_sdk.tar.gz ${DISTNAME_DATA}.tar.gz

HOMEPAGE =		http://www.warsow.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=warsow.mirror/} \
			http://www.warsow.net:1337/~warsow/${V}/ \
			http://www.warsow.net:1337/~warsow/${V_DATA}

# GPLv2 (-main and -server) and Warsow Content License (-data, proprietary licence)
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_FTP =	No

WANTLIB = c curl crypto iconv idn intl m pthread ssl z

MODULES-main +=		devel/gettext \
			converters/libiconv
LIB_DEPENDS-main +=	net/curl \
			audio/libvorbis \
			graphics/jpeg \
			graphics/png \
			multimedia/libtheora \
			audio/libogg \
			audio/libvorbis \
			devel/sdl \
			devel/libidn
RUN_DEPENDS-main +=	${BASE_PKGPATH},-data \
			audio/openal
WANTLIB-main +=         ${WANTLIB} SDL X11 Xext Xinerama Xxf86dga Xxf86vm \
			Xrandr freetype jpeg ogg png \
			stdc++ theora theoradec vorbis vorbisfile

MODULES-main +=		devel/gettext \
			converters/libiconv
LIB_DEPENDS-server +=	net/curl \
			devel/libidn
RUN_DEPENDS-server +=	${BASE_PKGPATH},-data
WANTLIB-server +=       ${WANTLIB}

LIB_DEPENDS-data =
WANTLIB-data =

LIB_PATH =		${PREFIX}/lib/warsow
DATA_PATH =		${PREFIX}/share/warsow

WRKDIST_ENGINE =	${WRKDIR}/${DISTNAME}_sdk
WRKSRC_ENGINE =		${WRKDIST_ENGINE}/source
WRKDIST_DATA =		${WRKDIR}/${DISTNAME_DATA}
WRKDIST =		${WRKDIST_ENGINE}
WRKSRC =		${WRKSRC_ENGINE}

USE_GMAKE =		Yes
MAKE_FLAGS =		CFLAGS='-DLIB_PATH="\"${LIB_PATH}\"" -DDATA_PATH="\"${DATA_PATH}\""'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/release/warsow ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/release/wsw*_server ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${LIB_PATH}/libs
	${INSTALL_DATA} ${WRKSRC}/release/libs/*.so ${LIB_PATH}/libs
	${INSTALL_DATA_DIR} ${LIB_PATH}/basewsw
	${INSTALL_DATA} ${WRKSRC}/release/basewsw/*.so ${LIB_PATH}/basewsw
	${INSTALL_DATA} ${WRKSRC}/release/basewsw/game.so ${LIB_PATH}/basewsw/game_server.so
	${INSTALL_DATA_DIR} ${DATA_PATH}
	cp -R ${WRKDIST_DATA}/basewsw ${DATA_PATH}
	cp -R ${WRKDIST_DATA}/docs ${DATA_PATH}

.include <bsd.port.mk>
