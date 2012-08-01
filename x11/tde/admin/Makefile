# $OpenBSD$

COMMENT =		Trinity Desktop Environment, admin tools

DISTNAME =		kdeadmin-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xext c kabc kdecore kdefx kdeprint
WANTLIB += kdeui kio kntlm ktexteditor m png pthread stdc++ tqt
WANTLIB += xcb z

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf
WRKDIST =		${WRKDIR}/kdeadmin

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
