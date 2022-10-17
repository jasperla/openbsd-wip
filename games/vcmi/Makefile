#GH_ACCOUNT = 		vcmi
#GH_PROJECT = 		vcmi
#GH_TAGNAME = 		1.0.0
DISTNAME = 		vcmi-1.0.0.20221015

COMMENT =		rewrite of the HoMM3 engine

CATEGORIES =		games

HOMEPAGE =		http://forum.vcmi.eu/portal.php

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

MODULES =		devel/cmake

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		archivers/minizip \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			devel/tbb \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread -DUSE_FILE32API" \
			-DENABLE_LAUNCHER=OFF \
			-DENABLE_TEST=OFF \
			-Wno-dev

CXXFLAGS +=		"-I${X11BASE}/include"

NO_TEST =		Yes

FIX_CRLF_FILES = 	Global.h lib/CStopWatch.h lib/Interprocess.h \
			lib/CModHandler.h lib/CModHandler.cpp \
			server/CVCMIServer.cpp

.include <bsd.port.mk>
