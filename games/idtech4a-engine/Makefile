ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	idTEch4a Engine provided Doom3/Quake4/Prey source port

N=		idtech4a-engine
V=		1.1.0harmattan65
P=		com.n0n3m4.diii4a

DIST_TUPLE =	github glKarin ${P} v${V} .
PKGNAME =	${N}-${V}

CATEGORIES=	games

HOMEPAGE=	https://github.com/glKarin/com.n0n3m4.diii4a

MAINTAINER=	Alexander Pavlov <t.x00100x.t@yandex.ru>


# GPL-3			- Main Code
# GPL-3			- Doom3/Quake4/Prey SDK for Android idTech4A++
# BSD			- msinttypes, TinyEXR, OpenEXR, vorbis, ogg
# BSD-1			- Mesa
# BSD-2 		- Base64, binpack2d, SSAO, SSGI
# CC0-1.0		- Replacement Textures
# MIT			- ImGui, stb
# RSA			- MD4
# ZLIB  		- Minizip, CRC32i irrxml, mikktspace
# public-domain 	- MD5, stb
# GPL-2			- timidity
# LGPL-2		- timidity
# Artistic		- timidity
# FTL BSD-style		- freetype
PERMIT_PACKAGE=	Yes

WRKDIST=		${WRKDIR}/${P}-${V}/Q3E/src/main/jni/doom3/neo

# Extra: ogg.6 vorbis.9 vorbisfile.6 (dlopen)
WANTLIB += ${COMPILER_LIBCXX} SDL2 c m pthread vorbis
WANTLIB += ${COMPILER_LIBCXX} openal z curl ogg vorbisfile

MODULES =	devel/cmake

# c++17
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DUSE_SYSTEM_ZLIB=ON -DOPENAL=TRUE
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release -DSDL2=ON 
CONFIGURE_ARGS +=	-DUSE_SYSTEM_CURL=ON -DNO_ALSA=ON
BUILD_DEPENDS =	devel/ninja \
		audio/libogg \
		audio/libvorbis \
		audio/openal \
		net/curl \
		devel/sdl2

LIB_DEPENDS =	audio/openal \
		audio/libogg \
		audio/libvorbis \
		net/curl \
		devel/sdl2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-${MACHINE_ARCH}/Doom3 \
		${PREFIX}/bin/idtech4a-doom3
	${INSTALL_PROGRAM} ${WRKDIR}/build-${MACHINE_ARCH}/Quake4 \
		${PREFIX}/bin/idtech4a-quake4
	${INSTALL_PROGRAM} ${WRKDIR}/build-${MACHINE_ARCH}/Prey \
		${PREFIX}/bin/idtech4a-prey
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	${INSTALL_DATA} ${WRKDIR}/${P}-${V}/README.md \
		${PREFIX}/share/doc/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cp -R ${FILESDIR}/idtech4a-doom3.desktop \
		${PREFIX}/share/applications
	cp -R ${FILESDIR}/idtech4a-quake4.desktop \
		${PREFIX}/share/applications
	cp -R ${FILESDIR}/idtech4a-prey.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/128x128/apps
	cp -R ${FILESDIR}/idtech4a-doom3.png \
		${PREFIX}/share/icons/hicolor/128x128/apps
	cp -R ${FILESDIR}/idtech4a-quake4.png \
		${PREFIX}/share/icons/hicolor/128x128/apps
	cp -R ${FILESDIR}/idtech4a-prey.png \
		${PREFIX}/share/icons/hicolor/128x128/apps


.include <bsd.port.mk>
