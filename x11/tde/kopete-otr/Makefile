# $OpenBSD$

COMMENT =		OTR plugin for Kopete

DISTNAME =		kopete-otr-${TDE_V}

SHARED_LIBS +=  kotr                      0.0 # 0.0

CATEGORIES =		x11 x11/tde net security

WANTLIB += ICE SM X11 Xext gcrypt gpg-error kdecore kdeui kopete
WANTLIB += kutils m otr png stdc++ tqt xcb z

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
LIB_DEPENDS =		x11/tde/network \
			security/libotr

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST =		${WRKDIR}/applications/kopete-otr

post-install:
	${INSTALL_DATA_DIR} ${TDE_HTML_DIR}/en/common

.include <bsd.port.mk>
