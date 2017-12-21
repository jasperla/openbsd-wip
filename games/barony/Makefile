# $OpenBSD $
#ONLY_FOR_ARCHS =		i386 amd64

COMMENT =				3d, first person roguelike.

V =			20171220
#V =                     barony-next	# commented out
N =                     barony
#PKGNAME =               ${N}-${V}	# commented out
#DISTNAME =				barony-${GH_TAGNAME}	# changed from barony-next
DISTNAME =		barony-${V}

GH_ACCOUNT =			TurningWheel
GH_PROJECT =			Barony
#GH_TAGNAME =			v2.0.5-RELEASE	# changed from barony-next
GH_COMMIT =			370edc6e64553072ead7572e8941e9acae40fbb1

CATEGORIES =			games

HOMEPAGE =				http://www.baronygame.com

#MASTER_SITES =          https://www.github.com/turningwheel/Barony/archive/	# commented out
#EXTRACT_SUFX =          .zip	# commented out

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
#WRKDIST =				${WRKDIR}/Barony-2.0.5-RELEASE

do-install:
						${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
						${INSTALL_PROGRAM} ${WRKBUILD}/editor ${PREFIX}/bin/${N}-editor
						${INSTALL_DATA_DIR} ${PREFIX}/share/${N}

.include <bsd.port.mk>
