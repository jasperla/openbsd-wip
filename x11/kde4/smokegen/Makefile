# $OpenBSD$

SHARED_ONLY =		Yes

CATEGORIES =		devel x11/kde4
COMMENT =		generator for wrappers around the Qt and KDE
DISTNAME =		smokegen-${VERSION}

SHARED_LIBS +=	smokebase		0.0 # 3.0
SHARED_LIBS +=	cppparser		0.0

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtXml

NO_REGRESS =		Yes

.include <bsd.port.mk>
