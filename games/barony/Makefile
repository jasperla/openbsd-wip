# $OpenBSD$

# Avoid EPOCH bumps
V =		3.1.1
COMMENT =	3d, first person roguelike
DISTNAME =	v${V}
CATEGORIES =	games x11
PKGNAME =       barony-${V}

GH_ACCOUNT =	TurningWheel
GH_PROJECT =	Barony
GH_TAG =        ${V}

EXTRACT_SUFX =  .zip

HOMEPAGE =	http://www.baronygame.com/

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 SDL2_image SDL2_net
WANTLIB += SDL2_ttf c execinfo m ogg openal png vorbisfile

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		devel/libexecinfo \
		devel/sdl2 \
		devel/sdl2-image \
		devel/sdl2-net \
		devel/sdl2-ttf \
		graphics/png

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DOPENAL_ENABLED=ON \
			-DEDITOR_EXE_NAME="barony-editor" \
			-DDATA_DIR=ON \
			-DCMAKE_INSTALL_BINDIR="${LOCALBASE}/bin"

NO_TEST =	Yes

WRKDIST = ${WRKDIR}/Barony-${V}

pre-configure:
	sed -i 's,-O3,,g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
