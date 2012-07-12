# $OpenBSD$

COMMENT =		tde image plugins api

DISTNAME =		libkipi-${TDE_V}

SHARED_LIBS +=  kipi                      2.0 # 1.1

CATEGORIES =		x11 x11/tde graphics

WANTLIB += ICE SM X11 Xext kdecore kdeui kio m png stdc++ tqt
WANTLIB += xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=libraries/}

LIB_DEPENDS =		x11/tde/libs

CONFIGURE_STYLE =	autoconf

WRKDIST =		${WRKDIR}/libraries/libkipi

.include <bsd.port.mk>
