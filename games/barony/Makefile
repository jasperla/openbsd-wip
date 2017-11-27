# $OpenBSD $
ONLY_FOR_ARCHS =		i386 amd64

COMMENT =				3d, first person roguelike.

V =                     barony-next
N =                     barony
PKGNAME =               ${N}-${V}
DISTNAME =				barony-next

GH_ACCOUNT =			TurningWheel
GH_PROJECT =			Barony
GH_TAGNAME =			barony-next

CATEGORIES =			games

HOMEPAGE =				http://www.baronygame.com

MASTER_SITES =          https://www.github.com/turningwheel/Barony/archive/
EXTRACT_SUFX =          .zip

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 				${COMPILER_LIBCXX} GL GLU openal ogg vorbis
WANTLIB += 				SDL2 SDL2_net SDL2_ttf SDL2_image jpeg tiff png 
WANTLIB += 				pthread z c c++ m

LIB_DEPENDS =			audio/libvorbis \
						audio/openal \
						devel/sdl2 \
						devel/sdl2-image \
						devel/sdl2-net \
						devel/sdl2-ttf \
						graphics/png \
						graphics/tiff \
						graphics/jpeg

MODULES =  				devel/cmake
COMPILER =				base-clang ports-gcc

CFLAGS =				-g -O2
CXXFLAGS =  			-g -O2
CONFIGURE_ENV =         -DCMAKE_C_FLAGS="${CFLAGS}" -DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
						-DOPENAL_ENABLED=On
WRKDIST =				${WRKDIR}/Barony-${V}

do-install:
						${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
						${INSTALL_PROGRAM} ${WRKBUILD}/editor ${PREFIX}/bin/${N}-editor
						${INSTALL_DATA_DIR} ${PREFIX}/share/${N}

.include <bsd.port.mk>
