# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		programming-focused real-time strategy game

DISTNAME =		colobot-$V

WANTLIB += GL GLEW GLU SDL2 SDL2_image SDL2_ttf boost_filesystem-mt
WANTLIB += boost_regex-mt boost_system-mt c m openal physfs png
WANTLIB += pthread sndfile z

GH_PROJECT =		colobot

MODULES =		devel/cmake \
			devel/gettext \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
RUN_DEPENDS =		games/colobot/data \
			games/colobot/music
LIB_DEPENDS =		audio/libsndfile \
			audio/openal \
			devel/boost \
			devel/physfs \
			devel/sdl2-image \
			devel/sdl2-ttf \
			graphics/glew

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_BIN_DIR="${PREFIX}/bin" \
			-DCMAKE_CXX_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
			-DCMAKE_EXE_LINKER_FLAGS="-lintl"

.include <bsd.port.mk>
