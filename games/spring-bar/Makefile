# with GPU demands including OpenGL 4.6, limit to amd64
ONLY_FOR_ARCHS =	amd64
COMMENT =		real-time strategy game engine for Beyond All Reason

# TODO: simplify if using my own tarball
MAJ =			105
MIN =			1.1
BLD =			1672
V =			${MAJ}.${MIN}.${BLD}
DISTNAME =		spring-bar-${V}
#PKGNAME =		spring-bar-${V}

#SHARED_LIBS =	???	0.0

CATEGORIES =		games x11
HOMEPAGE =		https://beyond-all-reason.github.io/spring/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL ILU SDL2 X11 Xcursor
WANTLIB += c curl execinfo fontconfig freetype jsoncpp m minizip ogg
WANTLIB += openal vorbis vorbisfile z

MASTER_SITES =		https://thfr.info/distfiles/
EXTRACT_SUFX =		.tar.xz
FIX_CRLF_FILES =	tools/pr-downloader/src/lib/readerwriterqueue/benchmarks/systemtime.h

# C++17
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake java
MODJAVA_VER =	1.8

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
			-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -lX11" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DJava_JAVA_EXECUTABLE=${LOCALBASE}/jdk-1.8.0/bin/java \
			-DJava_JAVAC_EXECUTABLE=${LOCALBASE}/jdk-1.8.0/bin/javac \
			-DJava_JAR_EXECUTABLE=${LOCALBASE}/jdk-1.8.0/bin/jar \
			-DJava_JAVADOC_EXECUTABLE=${LOCALBASE}/jdk-1.8.0/bin/javadoc \
			-DJava_JAVAH_EXECUTABLE=${LOCALBASE}/jdk-1.8.0/bin/javah \
			-DNO_CATCH_EXEPTIONS=ON \
			-DPRD_BINDIR="${PREFIX}/bin" \
			-DTRACY_ENABLE=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX: remove these debug flags
CFLAGS =	-O0 -pipe -g
CXXFLAGS =	-O0 -pipe -g

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib

.include <bsd.port.mk>
