# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =	GTK+2 IRC Client
DISTNAME =	hexchat-2.10.0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	net x11

HOMEPAGE =	http://hexchat.github.io/
MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1 png
WANTLIB += proxy pthread pthread-stubs ssl stdc++ util xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES =	http://dl.hexchat.net/hexchat/

MODULES =	devel/gettext \
		devel/gconf2 \
		lang/python

LIB_DEPENDS =	devel/libnotify \
		net/libproxy \
		x11/gtk+2 \
		x11/dbus-glib

MODPY_BUILD_DEP =	No

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6 \
			--enable-dbus \
			--enable-socks \
			--disable-libcanberra
CONFIGURE_ENV =		GCONF_SCHEMA_FILE_DIR=${LOCALBASE}/${SCHEMAS_INSTDIR}

USE_GMAKE =	Yes

MODGCONF2_SCHEMAS_DIR =	hexchat
MODGCONF2_LIBDEP =	No

NO_TEST =	Yes

.include <bsd.port.mk>
