# $OpenBSD$

COMMENT =	download manager application with torrent support
DISTNAME =	uget-1.10.4
CATEGORIES =	www net x11

HOMEPAGE =	http://ugetdm.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject crypto curl fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstreamer-1.0 gthread-2.0 gtk-3 idn m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread ssl z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=urlget/}

MODULES =	devel/gettext

LIB_DEPENDS =	devel/libnotify \
		multimedia/gstreamer1/core \
		net/curl \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		www/aria2 \
		x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

.include <bsd.port.mk>
