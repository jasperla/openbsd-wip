# $OpenBSD$

COMMENT =		IRC client for TDE

DISTNAME =		konversation-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xext Xss c kabc kdecore kdefx kdeui
WANTLIB += kimproxy kio ktexteditor m png pthread stdc++ tqt xcb
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/konversation

post-install:
.	for l in da en et it pt ru sv
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.	endfor

.include <bsd.port.mk>
