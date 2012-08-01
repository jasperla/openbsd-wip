# $OpenBSD$

COMMENT =		Trinity Desktop Environment, addons

DISTNAME =		kdeaddons-${TDE_V}

WANTLIB += DCOP ICE SDL SM X11 Xext Xi artsbuilder artsflow artsflow_idl
WANTLIB += artsgui artsgui_idl artsgui_kde artskde artsmidi_idl
WANTLIB += atlantic atlantikui c gdk glib gmodule gtk iconv intl
WANTLIB += kabc kateinterfaces kdecore kdefx kdegames kdeui kdnssd
WANTLIB += khtml kimproxy kio kmedia2_idl kmediaplayer knewstuff
WANTLIB += konq konqsidebarplugin kparts krsync ktexteditor m
WANTLIB += mcop noatun ogg png pthread qtmcop sndio soundserver_idl
WANTLIB += stdc++ tqt usbhid xcb xmms z

MODULES =		x11/tde
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/multimedia \
			x11/tde/games \
			x11/tde/base \
			audio/xmms

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/kdeaddons

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
