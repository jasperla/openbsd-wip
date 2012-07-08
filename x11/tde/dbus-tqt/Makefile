# $OpenBSD$

COMMENT =		TQt bindings for DBUS

DISTNAME =		dbus-tqt-${TDE_V}

SHARED_LIBS +=  dbus-tqt-1                0.0 # 0.0

WANTLIB += c dbus-1 m qt-mt stdc++ tqt

MASTER_SITES =		${MASTER_SITE_TDE:=dependencies/}

LIB_DEPENDS =		x11/tde/tqt \
			x11/dbus

WRKDIST =		${WRKDIR}/dependencies/dbus-tqt

.include <bsd.port.mk>
