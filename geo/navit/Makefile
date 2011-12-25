# $OpenBSD$

COMMENT =		car navigation system with routing engine

DISTNAME =		navit-0.1.1

CATEGORIES =		geo

HOMEPAGE =			http://navit.sourceforge.net

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=navit/}

WANTLIB = 		GL GLU SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xi Xinerama Xrandr Xrender c expat fontconfig \
			freetype fribidi gio-2.0 glib-2.0 glitz gmodule-2.0 \
			gobject-2.0 gthread-2.0 jpeg m pcre pixman-1 png pthread  \
			pthread-stubs sndio tiff usbhid xcb z

MODULES =		devel/gettext \
			textproc/intltool
BUILD_DEPENDS =		x11/gnome/librsvg

LIB_DEPENDS =		atk-1.0::devel/atk \
			cairo::graphics/cairo \
			dbus-1::x11/dbus \
			dbus-glib-1::x11/dbus-glib \
			gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			gtk-x11-2.0::x11/gtk+2 \
			pango-1.0,pangocairo-1.0::devel/pango \
			pangoft2-1.0::devel/pango \
			pq::databases/postgresql \
			GLC::graphics/quesoglc \
			SDL_image::devel/sdl-image \
			gps::misc/gpsd

USE_X11 =		Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-threads=posix \
			--disable-samplemap \
			${CONFIGURE_SHARED}
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		???

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

.include <bsd.port.mk>
