# $OpenBSD$

COMMENT =		GTK interface for GNUnet

DISTNAME =		gnunet-gtk-${V}

SHARED_LIBS +=		gnunetgtk	0.0 # 0.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += cairo-gobject drm expat extractor ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 gladeui-2 glib-2.0
WANTLIB += gmodule-2.0 gnunetcore gnunetdatastore gnunetfs gnunethello
WANTLIB += gnunetnat gnunetpeerinfo gnunetstatistics gnunettransport
WANTLIB += gnunetutil gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ unistring util xcb
WANTLIB += xcb-render xcb-shm xml2 z gnunetats gnunetnamestore

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		net/gnunet/base \
			devel/glade

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}"

NO_REGRESS =		Yes

.include <bsd.port.mk>
