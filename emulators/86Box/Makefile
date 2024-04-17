COMMENT =	emulator of retro x86-based machines

GH_ACCOUNT =	86Box
GH_PROJECT =	86Box
GH_TAGNAME =	v4.1.1

CATEGORIES =	emulators

HOMEPAGE =	https://86box.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} SDL2 c fluidsynth freetype glib-2.0
WANTLIB +=	intl m openal png slirp z

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/fluidsynth \
		audio/openal \
		devel/sdl2 \
		graphics/png \
		net/libslirp

CONFIGURE_ARGS = -DRELEASE=ON -DRTMIDI=OFF -DQT=OFF

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/86Box
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/86Box

.include <bsd.port.mk>
