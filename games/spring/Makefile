# with GPU demands including OpenGL 4.6, limit to amd64
ONLY_FOR_ARCHS =	amd64
COMMENT =		free cross-platform real-time strategy game engine
V =			106.0
DISTNAME =		spring_${V}_src
PKGNAME =		spring-${V}

#SHARED_LIBS =	???	0.0

CATEGORIES =		games x11
HOMEPAGE =		https://springrts.com/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU IL ILU SDL2 X11 Xcursor
WANTLIB += assimp c curl execinfo fontconfig freetype m minizip
WANTLIB += ogg openal vorbis vorbisfile z

MASTER_SITES =		https://springrts.com/dl/buildbot/default/master/${V}/source/

# C++17
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake java
MODJAVA_VER =	1.8

# Dependencies per upstream documentation
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
		multimedia/assimp \
		net/curl

# NO_CATCH_EXCEPTIONS to avoid the built-in error/stacktrace handler
CONFIGURE_ARGS =	-DAI_TYPES="NATIVE" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
			-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DJava_JAVA_EXECUTABLE=/usr/local/jdk-1.8.0/bin/java \
			-DJava_JAVAC_EXECUTABLE=/usr/local/jdk-1.8.0/bin/javac \
			-DJava_JAR_EXECUTABLE=/usr/local/jdk-1.8.0/bin/jar \
			-DJava_JAVADOC_EXECUTABLE=/usr/local/jdk-1.8.0/bin/javadoc \
			-DJava_JAVAH_EXECUTABLE=/usr/local/jdk-1.8.0/bin/javah

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# XXX: remove these debug flags
CFLAGS =	-O0 -pipe -g
CXXFLAGS =	-O0 -pipe -g

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib
WRKDIST =		${WRKDIR}/${DISTNAME:S/_src//g}

.include <bsd.port.mk>
