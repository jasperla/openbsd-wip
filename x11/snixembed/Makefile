COMMENT =	proxy StatusNotifierItems as XEmbedded systemtray-spec icons

DIST_TUPLE +=	srht steef snixembed 0.3.3 .

CATEGORIES =	x11

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GL Lerc X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xtst
WANTLIB += Xxf86vm atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 dbusmenu-glib dbusmenu-gtk3 drm epoll-shim epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz harfbuzz-gobject intl jpeg lzma pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += tiff wayland-client wayland-cursor wayland-egl xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shm xkbcommon z zstd

BUILD_DEPENDS =		lang/vala,-main
RUN_DEPENDS =		x11/gtk+3,-main devel/glib2
LIB_DEPENDS =		x11/libdbusmenu

MAKE_ENV =		PREFIX=$(TRUEPREFIX)
FAKE_FLAGS =		PREFIX=$(TRUEPREFIX)

USE_GMAKE =		Yes

MAKE_FILE =		makefile

ALL_TARGET =		snixembed
INSTALL_TARGET =	install

.include <bsd.port.mk>
