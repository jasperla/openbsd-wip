# $OpenBSD$

COMMENT =		clone of the turn-based strategy game Warlords II
DISTNAME =		lordsawar-0.3.0
CATEGORIES =		games x11

HOMEPAGE =		http://www.lordsawar.com/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi bz2 c cairo cairo-gobject cairomm-1.0
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstcheck-1.0 gstcontroller-1.0 gstfft-1.0 gstnet-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstreamermm-1.0 gstriff-1.0
WANTLIB += gstrtp-1.0 gstsdp-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += gtk-3 gtkmm-3.0 harfbuzz lzma lzo2 m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 xslt z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lordsawar/}

MODULES =		devel/gettext \
			textproc/intltool
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++
LIB_DEPENDS =		archivers/libarchive \
			devel/libsigc++-2 \
			multimedia/gstreamer1/mm \
			textproc/libxml++ \
			textproc/libxslt,-main \
			x11/gtk3mm

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CXXFLAGS +=		-std=c++11

.include <bsd.port.mk>
