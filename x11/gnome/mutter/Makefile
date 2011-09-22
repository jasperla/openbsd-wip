# $OpenBSD$

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.1.92

SHARED_LIBS +=  mutter                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += clutter-glx-1.0 drm execinfo expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += vorbis vorbisfile xcb xcb-aux xcb-render
WANTLIB += X11-xcb cogl cogl-pango stdc++
WANTLIB += xcb-shm z

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			graphics/clutter/core>=1.6.14 \
			devel/gobject-introspection \
			x11/gtk+3
BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/gnome/doc-utils
RUN_DEPENDS=		x11/gnome/zenity

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	mutter

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gconf \
			--enable-shape \
			--enable-sm \
			--enable-startup-notification \
			--enable-xsync \
			--enable-verbose-mode \
			--with-libcanberra
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
