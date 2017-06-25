# $OpenBSD$

V =		0.0.7.9.20170625
COMMENT =	open source re-implementation of RollerCoaster Tycoon 2
DISTNAME =	openrct2-${V}
CATEGORIES =	games x11

# Change these to upstream once patches are in!
GH_ACCOUNT =	ibara
GH_PROJECT =	OpenRCT2
GH_COMMIT =	e7da5499204c2c88b8476a395ad5f1734619582c

HOMEPAGE =	https://openrct2.website/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL2 c crypto curl fontconfig freetype iconv
WANTLIB += jansson m png pthread speexdsp ssl z zip

# Doesn't build with gcc-4.9.4
COMPILER =	clang

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/libzip \
		audio/speex \
		converters/libiconv \
		devel/jansson \
		devel/sdl2 \
		graphics/png \
		net/curl

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# Needs its own data installed to run the tests.
TEST_DEPENDS =	games/openrct2

CONFIGURE_ARGS =	-DCMAKE_SHARED_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DWITH_TESTS=on

pre-configure:
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKSRC}/src/openrct2/platform/linux.c

do-test:
	cd ${WRKBUILD} && ninja -v test

.include <bsd.port.mk>
