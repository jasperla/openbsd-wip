# $OpenBSD$

COMMENT =		yet another kuake TDE terminal emulator

DISTNAME =		yakuake-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xext c kdecore kdefx kdeui kio ktexteditor
WANTLIB += m png pthread stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/yakuake

.include <bsd.port.mk>
