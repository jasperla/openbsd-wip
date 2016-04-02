# $OpenBSD$

GH_ACCOUNT = 		vcmi
GH_PROJECT = 		vcmi
GH_COMMIT = 		2e70d29479d3452d0dd0b5dd3bcf7ba50ce9ea22
DISTNAME = 		vcmi-0.99b

COMMENT =		rewrite of the HoMM3 engine

CATEGORIES =		games

HOMEPAGE =		http://forum.vcmi.eu/portal.php

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS =		vcmi	0.0 # 0.0

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf avcodec avformat avutil
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_system-mt boost_thread-mt boost_unit_test_framework-mt
WANTLIB += boost_locale-mt c execinfo m pthread swscale z

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS +=        c++

BUILD_DEPENDS = 	devel/libexecinfo
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/boost \
			devel/libexecinfo \
			devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			graphics/ffmpeg

# Add -pthread to "enable" boost threading support.
CONFIGURE_ARGS +=	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread -DUSE_FILE32API" \
			-DCMAKE_SHARED_LINKER_FLAGS=-lexecinfo \
			-DENABLE_LAUNCHER=OFF \
			-Wno-dev

NO_TEST =		Yes

.include <bsd.port.mk>
