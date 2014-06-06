# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		GTK+2 IRC Client

DISTNAME =		hexchat-2.10.0

CATEGORIES =		net x11

EXTRACT_SUFX =	.tar.xz

HOMEPAGE =		http://hexchat.github.io

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB +=		X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB +=		Xrandr Xrender atk-1.0 c cairo crypto dbus-1 dbus-glib-1 ffi
WANTLIB +=		gdk-x11-2.0 expat fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB +=		glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB +=		gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 pcre perl pixman-1 proxy png pthread pthread-stubs
WANTLIB +=		notify ssl stdc++ util xcb xcb-render xcb-shm z

MODULES =	devel/gettext \
		devel/gconf2

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/libnotify \
		net/libproxy \
		x11/gtk+2 \
		x11/dbus-glib

MASTER_SITES =		http://dl.hexchat.net/hexchat/

USE_GMAKE =		Yes
MODGCONF2_SCHEMAS_DIR =		hexchat
MODGCONF2_LIBDEP =	No

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
		--enable-ipv6 \
		--enable-dbus \
		--enable-socks \
		--enable-ssl="/usr" \
		--disable-python \
		--disable-libcanberra
CONFIGURE_ENV =	GCONF_SCHEMA_FILE_DIR=${LOCALBASE}/${SCHEMAS_INSTDIR}

.include <bsd.port.mk>
