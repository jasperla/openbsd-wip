# $OpenBSD$

COMMENT =		powerful TDE batch file renamer

DISTNAME =		krename-${TDE_V}

CATEGORIES =		x11 x11/tde sysutils

WANTLIB += DCOP ICE SM X11 Xext c kdecore kdefx kdeui kio kparts
WANTLIB += ktexteditor m png pthread stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/krename

.include <bsd.port.mk>
