# $OpenBSD$

COMMENT =		image viewer for TDE

DISTNAME =		gwenview-${TDE_V}

SHARED_LIBS +=  gwenviewcore              0.0 # 1.0

CATEGORIES =		x11 x11/tde graphics

WANTLIB += ICE SM X11 Xcursor Xext Xfixes Xrender c exiv2 expat
WANTLIB += jpeg kdecore kdeprint kdeui kio kipi kmediaplayer kparts
WANTLIB += kutils m mng png pthread stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
#BUILD_DEPENDS =	???
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/libs \
			x11/tde/libkipi \
			graphics/exiv2

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/applications/gwenview

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
