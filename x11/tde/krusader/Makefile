# $OpenBSD$

COMMENT =		twin panel file manager for TDE

DISTNAME =		krusader-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xext c kdecore kdefx kdeui khtml kio
WANTLIB += konq kparts ktexteditor kutils kwalletclient m png
WANTLIB += pthread stdc++ tqt xcb z kjs kjsembed qui

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/base \
			x11/tde/bindings

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/krusader

post-install:
.for l in en ru
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/${l}/common
.endfor

.include <bsd.port.mk>
