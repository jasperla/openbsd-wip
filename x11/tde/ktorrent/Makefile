# $OpenBSD$

COMMENT =		torrent client for TDE

DISTNAME =		ktorrent-${TDE_V}

CATEGORIES =		x11 x11/tde net

WANTLIB += DCOP GL ICE SM X11 Xcursor Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt avahi-client avahi-common avahi-tqt
WANTLIB += c dbus-1 expat fontconfig freetype gmp jpeg kdecore
WANTLIB += kdefx kdeui khtml kio kparts ktexteditor lcms m mng
WANTLIB += png pthread stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			devel/gmp \
			x11/tde/avahi-tqt

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/ktorrent

.include <bsd.port.mk>
