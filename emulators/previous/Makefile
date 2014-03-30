# $OpenBSD$

COMMENT =	NeXT Cube/Station emulator
DISTNAME =	previous-0.4
CATEGORIES =	emulators x11

HOMEPAGE =	http://previous.alternative-system.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SDL SM X11 Xext c m png portaudio pthread z

MASTER_SITES =	http://devio.us/~bcallah/source/

MODULES =	devel/cmake \
		lang/python

LIB_DEPENDS =	audio/portaudio-svn \
		devel/sdl \
		graphics/png

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/previous
	${INSTALL_DATA} ${WRKSRC}/src/R* ${PREFIX}/share/previous

.include <bsd.port.mk>
