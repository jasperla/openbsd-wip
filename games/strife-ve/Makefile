# $OpenBSD$

COMMENT =	Strife Veteran Edition GPL Source Release
DISTNAME =	${GH_PROJECT}-1.3.0.20161022
CATEGORIES =	games x11

# No GH_TAGNAME
GH_ACCOUNT =	svkaiser
GH_PROJECT =	strife-ve
GH_COMMIT =	1b7015956edd184fb9f94a912c8eb4c60f2b83f4

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_mixer SDL_net avcodec avformat avutil
WANTLIB += c m png pthread swscale z

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		graphics/ffmpeg \
		graphics/png

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/${GH_PROJECT}-src

# Fix up system-wide install paths
post-extract:
	@sed -i 's,/games/doom,/strife-ve,g' ${WRKSRC}/src/d_iwad.c
	@sed -i 's,"movies/,"${LOCALBASE}/share/strife-ve/movies/,g' \
		${WRKSRC}/src/strife/d_main.c

# No upstream install target
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${GH_PROJECT} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/strife-ve
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/strife-ve
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/strife-music.cfg \
		${PREFIX}/share/examples/strife-ve/strife-music.cfg

.include <bsd.port.mk>
