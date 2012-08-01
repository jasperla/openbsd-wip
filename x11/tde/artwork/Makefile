# $OpenBSD$

COMMENT =		Trinity Desktop Environment, additional artwork

DISTNAME =		kdeartwork-${TDE_V}

WANTLIB += DCOP GL GLU ICE SM X11 Xcomposite Xext Xrender Xt art_lgpl_2
WANTLIB += c expat fontconfig freetype idn kdecorations kdecore
WANTLIB += kdefx kdesu kdeui kio kscreensaver kwalletclient m
WANTLIB += pthread stdc++ tqt util z

MODULES =		devel/gettext \
			x11/tde
BUILD_DEPENDS =		x11/xscreensaver,-data,no_gle
RUN_DEPENDS =		x11/xscreensaver,-data,no_gle \
			x11/gtk+2,-guic
LIB_DEPENDS =		x11/tde/base

CONFIGURE_ARGS +=	-DBUILD_ALL=ON \
			-DXSCREENSAVER_CONFIG_DIR="${LOCALBASE}/share/xscreensaver/config"

WRKDIST =		${WRKDIR}/kdeartwork

.include <bsd.port.mk>
