# $OpenBSD$

COMMENT =		clone of the turn-based strategy game Warlords II
DISTNAME =		lordsawar-0.3.1
CATEGORIES =		games x11

HOMEPAGE =		http://www.nongnu.org/lordsawar/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi bz2 c cairo cairo-gobject cairomm-1.0
WANTLIB += crypto dbus-1 epoxy expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstcheck-1.0 gstcontroller-1.0
WANTLIB += gstfft-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstreamermm-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0
WANTLIB += gstsdp-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkmm-3.0 harfbuzz lz4 lzma m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 xcb xcb-render xcb-shm xml++-2.6
WANTLIB += xml2 xslt z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=lordsawar/}

MODULES =		devel/gettext \
			textproc/intltool
COMPILER =		clang
LIB_DEPENDS =		archivers/libarchive \
			devel/libsigc++-2 \
			multimedia/gstreamer1/mm \
			textproc/libxml++ \
			textproc/libxslt,-main \
			x11/gtk3mm
RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/desktop-file-utils

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CXXFLAGS +=		-std=c++11

post-patch:
	@perl -pi -e '$$. == 1 && s|^\#!/bin/bash|\#!/bin/sh|;' \
		${WRKSRC}/create-lw-file

.include <bsd.port.mk>
