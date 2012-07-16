# $OpenBSD$

COMMENT =		compare and merge multiple files or directories

DISTNAME =		kdiff3-${TDE_V}

CATEGORIES =		x11 x11/tde devel

WANTLIB += DCOP ICE SM X11 Xext c kdecore kdefx kdeprint kdeui
WANTLIB += kio konq kparts ktexteditor m png pthread stdc++ tqt
WANTLIB += xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

LIB_DEPENDS =		x11/tde/base

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/kdiff3

post-install:
.for l in da de en es et fr it nl pt sv
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.endfor

.include <bsd.port.mk>
