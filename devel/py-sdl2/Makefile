# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Python ctypes wrapper around SDL2

MODPY_EGG_VERSION = 0.9.6
DISTNAME =	PySDL2-${MODPY_EGG_VERSION}
PKGNAME =	py-sdl2-${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/marcusva/py-sdl2

# CC0 (Public Domain)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes

RUN_DEPENDS =	devel/sdl2 \
		devel/sdl2-gfx \
		devel/sdl2-image \
		devel/sdl2-ttf \
		devel/sdl2-mixer

NO_TEST =	Yes

.include <bsd.port.mk>
