# $OpenBSD$

COMMENT =		bible study tool

DISTNAME =		bibletime-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xext c clucene kdecore kdefx kdeprint
WANTLIB += kdeui khtml kio kparts ktexteditor m png pthread stdc++
WANTLIB += sword tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		textproc/sword \
			textproc/clucene \
			x11/tde/libs

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LDFLAGS="-Wl,-rpath-link,${X11BASE}/lib"

WRKDIST =		${WRKDIR}/applications/bibletime

.include <bsd.port.mk>
