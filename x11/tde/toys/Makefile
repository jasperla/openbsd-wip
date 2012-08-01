# $OpenBSD$

COMMENT =		Trinity Desktop Environment, toys

DISTNAME =		kdetoys-${TDE_V}

CATEGORIES =		x11 x11/tde games

WANTLIB += DCOP ICE SM X11 Xext c kdecore kdefx kdeui khtml kio
WANTLIB += kscreensaver ktexteditor m png pthread stdc++ tqt xcb
WANTLIB += z

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/kdetoys

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
