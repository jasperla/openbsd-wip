# $OpenBSD$

COMMENT =		front-end to mplayer for TDE

DISTNAME =		kmplayer-${TDE_V}

WANTLIB += DCOP GL ICE SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xv atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 dbus-tqt-1 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-x11-2.0 kdecore kdefx kdeui kio kmediaplayer kparts
WANTLIB += ktexteditor kutils m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ tqt
WANTLIB += xcb xcb-render xcb-shm xine xml2 z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
BUILD_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
RUN_DEPENDS =		x11/mplayer
LIB_DEPENDS =		x11/tde/libs \
			x11/gtk+2 \
			x11/tde/dbus-tqt \
			multimedia/xine-lib \
			multimedia/gstreamer-0.10/core \
			x11/dbus-glib

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/kmplayer

post-install:
.for l in da de en es et fr it nl pt ru sv
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.endfor

.include <bsd.port.mk>
