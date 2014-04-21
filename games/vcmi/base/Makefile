# $OpenBSD$

SHARED_ONLY = 		Yes

COMMENT =		rewrite of the HoMM3 engine

DISTNAME = 		vcmi-${V}

SHARED_LIBS =		vcmi	0.0 # 0.0

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf avcodec avformat avutil
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt boost_locale-mt c m pthread swscale z

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS +=        c++
RUN_DEPENDS =		devel/desktop-file-utils \
			games/vcmi/data>=${V}
LIB_DEPENDS =		devel/boost \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread" \
			-DCMAKE_BUILD_TYPE=Release \
			-DENABLE_LAUNCHER=OFF

.include <bsd.port.mk>
