DISTNAME = 		vcmi-1.3.1.20230830

COMMENT-main =		HoMM3 engine rewrite
COMMENT-launcher =	launcher for the HoMM3 engine rewrite

CATEGORIES =		games

HOMEPAGE =		https://vcmi.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =		http://www.linklevel.net/distfiles/

# GPLv2+
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		vcmi	0.0 # 0.0

cWANTLIB += ${COMPILER_LIBCXX} SDL2 boost_atomic-mt boost_chrono-mt
cWANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
cWANTLIB += boost_program_options-mt boost_thread-mt c m minizip z

WANTLIB-main += SDL2_image SDL2_mixer SDL2_ttf avcodec avformat
WANTLIB-main += avutil pthread swscale tbb ${cWANTLIB}

WANTLIB-launcher += Qt5Core Qt5Gui Qt5Network Qt5Widgets #vcmi
WANTLIB-launcher += ${cWANTLIB}

# C++14
COMPILER = 		base-clang ports-gcc

MODULES =		devel/cmake x11/qt5

MULTI_PACKAGES = 	-main -launcher
#PSEUDO_FLAVORS = 	no_launcher
#FLAVOR ?= 		no_launcher

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

RUN_DEPENDS-main = 	shells/bash \
			${RUN_DEPENDS}
RUN_DEPENDS-launcher = 	${RUN_DEPENDS}

LIB_DEPENDS-main =	archivers/minizip \
			devel/boost \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			devel/tbb \
			graphics/ffmpeg

LIB_DEPENDS-launcher = 	archivers/minizip \
			devel/boost \
			devel/sdl2 \
			${BASE_PKGPATH},-main \
			${LIB_DEPENDS}

#.include <bsd.port.arch.mk>

#.if !${BUILD_PACKAGES:M-launcher}
#CONFIGURE_ARGS += 	-DENABLE_LAUNCHER=OFF
#.else
#MODULES += 		x11/qt5
#.endif

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread -DUSE_FILE32API" \
			-DENABLE_GITVERSION=OFF \
			-DENABLE_EDITOR=OFF \
			-DENABLE_TEST=OFF \
			-DQT_VERSION_MAJOR=5 \
			-Wno-dev

CXXFLAGS +=		"-I${X11BASE}/include"

NO_TEST =		Yes

FIX_CRLF_FILES = 	Global.h lib/CStopWatch.h lib/Interprocess.h \
			lib/CModHandler.h lib/CModHandler.cpp \
			lib/serializer/Connection.h server/CVCMIServer.h \
			server/CVCMIServer.cpp
post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/vcmibuilder

.include <bsd.port.mk>
