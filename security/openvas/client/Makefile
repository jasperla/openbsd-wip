# $OpenBSD$

COMMENT =		OpenVAS security scanner client
DISTNAME =		openvas-client-3.0.3
# PKGNAME =		${DISTNAME}

MASTER_SITES =		${MASTER_SITES_OPENVAS:=845/}

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gio-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 \
		pixman-1 png  \
		pthread pthread-stubs  \
		xcb xcb-render z \
		openvas_base openvas_hg openvas_misc openvas_nasl openvas_omp \
		glib-2.0 gdk_pixbuf-2.0 gnutls gpgme gpg-error
WANTLIB += GL Xxf86vm drm xcb-shm

RUN_DEPENDS +=		print/htmldoc
LIB_DEPENDS +=		x11/gtk+2 \
			security/openvas/libraries \
			graphics/gdk-pixbuf2 \
			devel/glib2 \
			security/gnutls \
			security/gpgme \
			security/libgpg-error

MODULES =		devel/gettext

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-gtk

.include <bsd.port.mk>
