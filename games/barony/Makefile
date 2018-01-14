# $OpenBSD$

# Avoid EPOCH bumps
V =		2.0.7.20171126
COMMENT =	3d, first person roguelike
DISTNAME =	barony-${V}
CATEGORIES =	games x11

# Will become GH_TAGNAME=v3.0.0 soemday
GH_ACCOUNT =	TurningWheel
GH_PROJECT =	Barony
GH_COMMIT =	316f40ebff2bd56dbf9a3f1a60fac5b28e80f7d1

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
			-DOPENAL_ENABLED=ON

NO_TEST =	Yes

pre-configure:
	sed -i 's,-O3,,g' ${WRKSRC}/CMakeLists.txt

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/barony ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/editor ${PREFIX}/bin/barony-editor

.include <bsd.port.mk>
