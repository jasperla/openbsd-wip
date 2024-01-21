# with GPU demands including OpenGL 4.6, limit to amd64 for now
ONLY_FOR_ARCHS =	amd64
COMMENT =		real-time strategy game engine for Beyond All Reason

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

PKGNAME =		spring-bar-${V}
DIST_STRING =		spring_bar_%7BBAR${MJ}%7D${MAJ}.${MN}-${BLD}-${HASH}

MJ =			105
MN =			1.1
BLD =			2257
V =			${MJ}.${MN}pl${BLD}
HASH =			gff7ac35

DIST_TUPLE +=		github beyond-all-reason spring ${DIST_STRING} .
DIST_TUPLE +=		github USCiLab cereal d1fcec807b372f04e4c1041b3058e11c12853e6e \
			rts/lib/cereal # BSD-3
DIST_TUPLE +=		github skypjack entt e4ccb878f47245a319704912435d3c89f34ad6be \
			rts/lib/entt # MIT
DIST_TUPLE +=		github gflags gflags f8a0efe03aa69b3336d8e228b37d4ccb17324b88 \
			rts/lib/gflags # BSD-3
DIST_TUPLE +=		github wolfpld tracy 5a1f5371b792c12aea324213e1dc738b2923ae21 \
			rts/lib/tracy # BSD-3
DIST_TUPLE +=		github rlcevg CircuitAI \
			bd84716d585960b12a1631c652dfe3f008e7a5bb AI/Skirmish/BARb \
			# GPL-2.0
DIST_TUPLE +=		github rlcevg CircuitAI \
			06811d389e78eef1041ce49b72144c7a0457987e AI/Skirmish/CircuitAI \
			# GPL-2.0
DIST_TUPLE +=		github spring SpringMapConvNG \
			0ddd86eaa8871dc0833c69f931f55cd856c5009d tools/mapcompile # GPL-2.0
DIST_TUPLE +=		github beyond-all-reason pr-downloader \
			4e30e3e776c47b81e790fffcb2b62f81437e0c24 tools/pr-downloader \
			# GPL-2.0
DIST_TUPLE +=		github cameron314 readerwriterqueue \
			8e7627d18c2108aca178888d88514179899a044f \
			tools/pr-downloader/src/lib/readerwriterqueue # BSD-2

#SHARED_LIBS =	???	0.0

CATEGORIES =		games x11
HOMEPAGE =		https://beyond-all-reason.github.io/spring/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL ILU SDL2 X11 Xcursor
WANTLIB += c curl execinfo fontconfig freetype jsoncpp m minizip ogg
WANTLIB += openal vorbis vorbisfile z

FIX_CRLF_FILES =	tools/pr-downloader/src/lib/readerwriterqueue/benchmarks/systemtime.h

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

# Dependencies per upstream documentation (https://github.com/spring/spring)
# sdl2, devil, openal, GLEW, zlib, freetype, ogg, vorbis, vorbisfile, curl,
# OPTIONAL: python 2.5+, jdk 1.5+, boost 1.47+
BUILD_DEPENDS =	archivers/p7zip \
		converters/libiconv \
		devel/boost
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info
LIB_DEPENDS =	archivers/minizip \
		audio/libvorbis \
		audio/openal \
		devel/jsoncpp \
		devel/sdl2 \
		graphics/DevIL \
		graphics/glew \
		net/curl

# NO_CATCH_EXCEPTIONS to avoid the built-in error/stacktrace handler
CONFIGURE_ARGS =	-DAI_TYPES="NATIVE" \
			-DCMAKE_BUILD_TYPE=RELWITHDEBINFO \
			-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -lX11" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DLUA_USE_BSD=1 \
			-DNO_CATCH_EXEPTIONS=ON \
			-DPRD_BINDIR="${PREFIX}/bin" \
			-DTRACY_ENABLE=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX: remove these debug flags when ready for port import
CFLAGS =	-O0 -pipe -g -fstack-protector -DMALLOC_STATS
CXXFLAGS =	-O0 -pipe -g -fstack-protector -DMALLOC_STATS

CFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib \
			-L${X11BASE}/lib -DMALLOC_STATS

WRKDIST =		${WRKDIR}/spring-${DIST_STRING:S/%7B/-/g:S/%7D/-/g}

.include <bsd.port.mk>
