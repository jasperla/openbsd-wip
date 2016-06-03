# $OpenBSD$


COMMENT =		GTK interface for GNUnet

DISTNAME =		gnunet-gtk-${V}

SHARED_LIBS +=		gnunetgtk	0.0 # 0.0

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += bz2 c cairo cairo-gobject dbus-1 dbus-glib-1 expat
WANTLIB += extractor ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 gladeui-2 glib-2.0 gmodule-2.0 gnunetarm gnunetats
WANTLIB += gnunetcore gnunetdatastore gnunetdnsparser gnunetfriends
WANTLIB += gnunetfs gnunetgns gnunetgnsrecord gnunethello gnunetidentity
WANTLIB += gnunetnamestore gnunetnat gnunetpeerinfo gnunetstatistics
WANTLIB += gnunettransport gnunettun gnunetutil gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz idn ltdl m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs qrencode unique-3.0 unistring
WANTLIB += util xcb xcb-render xcb-shm xml2 z

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		net/gnunet/base \
			devel/glade \
			devel/libunique3 \
			graphics/libqrencode

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}"

LIBTOOL_FLAGS =         --tag=disable-static

NO_TEST =		Yes

.include <bsd.port.mk>
