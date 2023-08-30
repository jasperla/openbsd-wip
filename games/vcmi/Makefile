DISTNAME = 		vcmi-1.2.1.20230621

COMMENT =		rewrite of the HoMM3 engine

CATEGORIES =		games

HOMEPAGE =		https://vcmi.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =		http://www.linklevel.net/distfiles/

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		vcmi	0.0 # 0.0

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf avcodec avformat
WANTLIB += avutil boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_program_options-mt
WANTLIB += boost_thread-mt c m minizip pthread swscale tbb z
WANTLIB += ${COMPILER_LIBCXX}

# C++14
COMPILER = 		base-clang ports-gcc

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			shells/bash \
			x11/gtk+4,-guic
LIB_DEPENDS =		archivers/minizip \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			devel/tbb \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread -DUSE_FILE32API" \
			-DENABLE_GITVERSION=OFF \
			-DENABLE_EDITOR=OFF \
			-DENABLE_LAUNCHER=OFF \
			-DENABLE_TEST=OFF \
			-Wno-dev
#			-DLIB_DIR=${PREFIX}/lib/

CXXFLAGS +=		"-I${X11BASE}/include"

NO_TEST =		Yes

FIX_CRLF_FILES = 	Global.h lib/CStopWatch.h lib/Interprocess.h \
			lib/CModHandler.h lib/CModHandler.cpp \
			lib/serializer/Connection.h server/CVCMIServer.h \
			server/CVCMIServer.cpp
post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/vcmibuilder

.include <bsd.port.mk>
