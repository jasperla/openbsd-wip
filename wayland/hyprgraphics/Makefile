COMMENT =	C++ graphics utilities library for the Hypr* ecosystem

V =		0.5.1
GH_ACCOUNT =	hyprwm
GH_PROJECT =	hyprgraphics
GH_TAGNAME =	v${V}

SHARED_LIBS =	hyprgraphics 0.0

CATEGORIES =	wayland
MAINTAINER =	Mykyta Nazarenko <mn@superpc.suicide.solutions>

HOMEPAGE =	https://github.com/hyprwm/hyprgraphics

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} cairo drm gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 harfbuzz heif hyprutils intl jpeg
WANTLIB += jxl jxl_cms jxl_threads m magic pango-1.0 pangocairo-1.0
WANTLIB += pixman-1 png rsvg-2 webp

MODULES =	devel/cmake

LIB_DEPENDS =	wayland/hyprutils \
		graphics/cairo \
		devel/pango \
		graphics/jpeg \
		graphics/png \
		graphics/libwebp \
		x11/gnome/librsvg \
		graphics/libjxl \
		multimedia/libheif \
		devel/libmagic

.include <bsd.port.mk>
