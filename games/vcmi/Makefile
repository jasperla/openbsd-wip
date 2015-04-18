# $OpenBSD$

SHARED_ONLY = 		Yes

GH_ACCOUNT = 		vcmi
GH_PROJECT = 		vcmi
GH_TAGNAME= 		0.98

DISTNAME = 		${GH_PROJECT}-${GH_TAGNAME}

COMMENT =		rewrite of the HoMM3 engine

CATEGORIES =		games

HOMEPAGE =		http://forum.vcmi.eu/portal.php

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS =		vcmi	0.0 # 0.0

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf avcodec avformat avutil
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt boost_locale-mt c execinfo m pthread swscale z

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS +=        c++

BUILD_DEPENDS = 	devel/libexecinfo
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/boost \
			devel/libexecinfo \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread" \
			-DCMAKE_SHARED_LINKER_FLAGS=-lexecinfo \
			-DENABLE_LAUNCHER=OFF \
			-DENABLE_SDL2=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
