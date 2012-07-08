# $OpenBSD$

COMMENT =		file manager for TDE

DISTNAME =		dolphin-${TDE_V}

WANTLIB += DCOP ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype idn kdecore kdefx kdesu kdeui kio konq kparts
WANTLIB += kwalletclient m pthread stdc++ tqt util z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
LIB_DEPENDS =		x11/tde/base

WRKDIST =		${WRKDIR}/applications/dolphin

.include <bsd.port.mk>
