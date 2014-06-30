# $OpenBSD$

COMMENT =	GTK+3 library for registering keyboard shortcuts
DISTNAME =	keybinder3-0.3.0
CATEGORIES =	x11 devel

SHARED_LIBS =	keybinder-3.0		0.0	# 0.0

HOMEPAGE =	https://github.com/engla/keybinder
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/gobject-introspection

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-static

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder-3.0.la

.include <bsd.port.mk>
