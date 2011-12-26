# $OpenBSD$

COMMENT =		GTK interface for GNUnet

DISTNAME =		gnunet-gtk-0.9.0

SHARED_LIBS +=		gnunetgtk	0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		http://gnunet.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += cairo-gobject drm expat extractor ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 gladeui-2 glib-2.0
WANTLIB += gmodule-2.0 gnunetcore gnunetdatastore gnunetfs gnunethello
WANTLIB += gnunetnat gnunetpeerinfo gnunetstatistics gnunettransport
WANTLIB += gnunetutil gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ util xcb xcb-render
WANTLIB += xcb-shm xml2 z

MASTER_SITES =		${MASTER_SITE_GNU:=gnunet/}

MODULES =		devel/gettext
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		net/gnunet \
			devel/glade

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-extractor="${LOCALBASE}"

NO_REGRESS =		Yes

.include <bsd.port.mk>
