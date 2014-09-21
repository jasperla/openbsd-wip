# $OpenBSD$

COMMENT =	programming editor written in vala
DISTNAME =	vanubi-0.0.14
CATEGORIES =	editors x11

GH_ACCOUNT =	vanubi
GH_PROJECT =	vanubi
GH_COMMIT =	d4f8678f444842b54bf9bac3afbc8a66b726ea93

SHARED_LIBS +=  vanubi-0.1                0.0 # 0.0

HOMEPAGE =	http://vanubi.github.io/vanubi/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 execinfo expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 util vte2_90 wnck-3 xcb xcb-render
WANTLIB += xcb-shm xcb-util xml2 z

MODULES =	devel/gettext

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		lang/vala

LIB_DEPENDS =	devel/libexecinfo \
		devel/libwnck3 \
		devel/vte3 \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-asciidoc

USE_GMAKE =	Yes
# Prevent asciidoc from being used even if installed.
MAKE_FLAGS =	ASCIIDOC=

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
