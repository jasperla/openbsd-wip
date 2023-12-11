COMMENT =	open source version of the classic Serious Sam game

V=		1.10.6c

DIST_TUPLE =	github tx00100xt SeriousSamClassic-VK ${V} .
PKGNAME =	serioussam-vk-${V}

CATEGORIES =	games

SHARED_LIBS +=	Engine 0.0
SHARED_LIBS +=	EngineMP 0.0

MAINTAINER =	Alexander Pavlov <t.x00100x.t@yandex.ru>

# GPLv2
PERMIT_PACKAGE =	Yes

# Extra: ogg.6 vorbis.9 vorbisfile.6 (dlopen)
WANTLIB =  ${COMPILER_LIBCXX} SDL2 c m ogg pthread vorbis vorbisfile z vulkan

MODULES =	devel/cmake

# c++14
COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS +=	-DUSE_SYSTEM_INSTALL=ON

BUILD_DEPENDS =	audio/libogg \
		audio/libvorbis \
		devel/bison \
		devel/sdl2 \
		graphics/ImageMagick

# Libraries loaded with dlopen(3)
LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		devel/sdl2 \
		graphics/vulkan-loader

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

.if ${MACHINE_ARCH} == aarch64 || ${MACHINE_ARCH} == armv7
CONFIGURE_ARGS +=	-DRPI4=ON
.endif

.if ${MACHINE_ARCH}== i386 || ${MACHINE_ARCH}== amd64
CONFIGURE_ARGS +=	-DUSE_ASM=OFF
.endif

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/bsd/serioussam-vk.1 \
		${PREFIX}/man/man1/serioussam-vk.1
	${INSTALL_MAN} ${WRKSRC}/man/bsd/serioussamclassic-vk.1 \
		${PREFIX}/man/man1/serioussamclassic-vk.1

.include <bsd.port.mk>
