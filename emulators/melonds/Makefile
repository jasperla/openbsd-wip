# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Nintendo DS emulator

# http://melonds.kuribo64.net/downloads.php
DISTNAME =	melonds-0.6b

GH_ACCOUNT =	StapleButter
GH_PROJECT =	melonDS
GH_COMMIT =	2e82a4f26ac99a1a93afdcb6bbfc4095d0933cc6

CATEGORIES =	emulators

HOMEPAGE =	http://melonds.kuribo64.net/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl2 \
			x11/gtk+3

NO_TEST =		Yes

.include <bsd.port.mk>
