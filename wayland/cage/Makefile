COMMENT =	A wayland kiosk

VERSION = 	0.2.0
DISTNAME =	cage-${VERSION}
PKGNAME =	cage-${VERSION}

CATEGORIES =	wayland

HOMEPAGE =	https://www.hjdskes.nl/projects/cage/
MAINTAINER =	bilaliscarioth <bilal@iscarioth.org>

GH_ACCOUNT =	cage-kiosk
GH_PROJECT =	cage
GH_COMMIT = 	e128a9f2511644529fa47701a7147d65d9920488

WANTLIB = c wayland-server wlroots-0.18 xkbcommon

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c


MODULES = devel/meson

BUILD_DEPENDS = \
		devel/meson \
		devel/epoll-shim

LIB_DEPENDS =	\
		wayland/wayland \
		wayland/wlroots \
		x11/xkbcommon

.include <bsd.port.mk>
