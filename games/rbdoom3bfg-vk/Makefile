COMMENT=	Doom 3 BFG Edition source port with updated Vulkan renderer

N=		rbdoom3bfg-vk
V=		1.4.0
P=		RBDOOM-3-BFG

DIST_TUPLE =	github RobertBeckebans ${P} v${V} .
PKGNAME =	${N}-${V}

CATEGORIES=	games

MAINTAINER=	Alexander Pavlov <t.x00100x.t@yandex.ru>


# GPL-3			- Main Code
# BSD			- msinttypes, TinyEXR, OpenEXR
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
PERMIT_PACKAGE=	Yes

WRKDIST=		${WRKDIR}/${P}-${V}/neo

WANTLIB += ${COMPILER_LIBCXX} SDL2 c m pthread png 
WANTLIB += ${COMPILER_LIBCXX} jpeg openal z vulkan

MODULES =	devel/cmake

# c++17
COMPILER =	base-clang ports-gcc
CXXFLAGS +=	-I${X11BASE}/include

CONFIGURE_ARGS +=	-DUSE_INTRINSICS_SSE=ON -DSDL2=ON 
CONFIGURE_ARGS +=	-DUSE_SYSTEM_ZLIB=ON -DUSE_SYSTEM_LIBPNG=ON 
CONFIGURE_ARGS +=	-DUSE_SYSTEM_LIBJPEG=ON -DUSE_SYSTEM_LIBGLEW=ON
CONFIGURE_ARGS +=	-DUSE_SYSTEM_RAPIDJSON=ON -DUSE_VULKAN=ON
CONFIGURE_ARGS +=	-DUSE_PRECOMPILED_HEADERS=OFF
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release -DSDL2=ON 
CONFIGURE_ARGS +=	-DSPIRV_SHADERC=OFF -DFFMPEG=ON 
CONFIGURE_ARGS +=	-DCMAKE_SKIP_RPATH=ON

BUILD_DEPENDS =	devel/ninja \
		graphics/glslang \
		graphics/spirv-tools \
		audio/openal \
		graphics/ffmpeg \
		devel/sdl2 \
		graphics/vulkan-headers \
		graphics/png \
		graphics/glew \
		graphics/jpeg \
		textproc/rapidjson

LIB_DEPENDS =	graphics/glslang \
		audio/openal \
		graphics/ffmpeg \
		devel/sdl2 \
		graphics/png \
		graphics/glew \
		graphics/jpeg \
		textproc/rapidjson \
		graphics/vulkan-loader

NO_TEST =	Yes


post-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-${MACHINE_ARCH}/${N} \
		${PREFIX}/bin/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	${INSTALL_DATA} ${WRKDIR}/${P}-${V}/README.md \
		${PREFIX}/share/doc/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	cp -R ${WRKDIR}/${P}-${V}/base ${PREFIX}/share/${N}


.include <bsd.port.mk>
