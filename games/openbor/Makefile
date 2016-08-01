# $OpenBSD$

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		engine for "beat em up" and "hack n slash" games
DISTNAME =		openbor-3.0.r4167
CATEGORIES =		games
HOMEPAGE =		http://www.chronocrash.com
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# custom BSD-style license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_gfx c m ogg png pthread vorbis vorbisfile
WANTLIB += vpx z

MASTER_SITES =		${MASTER_SITE_FREEBSD_LOCAL:=jbeich/}
EXTRACT_SUFX =		.tar.xz

MODULES =		gcc4
MODGCC4_ARCHS =		${ONLY_FOR_ARCHS}
LIB_DEPENDS =		audio/libvorbis \
			devel/sdl2-gfx \
			graphics/png \
			multimedia/libvpx

MAKE_FLAGS =		CC="${CC}" LIBRARIES="${LOCALBASE}/lib" \
			TARGET_ARCH=${ARCH:S/i386/x86/} ARCHFLAGS=""
MAKE_ENV =		BUILD_LINUX=1 SDKPATH="${LOCALBASE}" \
			GCC_TARGET="${ARCH:S/amd64/x86_64/}"

USE_GMAKE =		Yes

pre-patch:
	@find ${WRKSRC} -type f -exec sed -i \
		-e 's///' \
		-e 's/<malloc.h>/<stdlib.h>/' \
			{} +

do-configure:
	cd ${WRKSRC} && sh version.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/OpenBOR.elf ${PREFIX}/bin/openbor
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/resources/OpenBOR_Icon_128x128.png \
			${PREFIX}/share/pixmaps/openbor.png

.include <bsd.port.mk>
