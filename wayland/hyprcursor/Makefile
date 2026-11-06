COMMENT =	library and toolkit for the Hyprland cursor format

V =		0.1.13
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprcursor
GH_TAGNAME =	v${V}

DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	${DISTNAME}

SHARED_LIBS =	hyprcursor 0.0

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprcursor

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 hyprlang intl m rsvg-2 tomlplusplus zip

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=Release

LIB_DEPENDS =		wayland/hyprlang \
			archivers/libzip \
			graphics/cairo \
			x11/gnome/librsvg \
			textproc/tomlplusplus

.include <bsd.port.mk>
