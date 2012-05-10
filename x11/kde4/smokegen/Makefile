# $OpenBSD$

CATEGORIES =	devel x11/kde4
COMMENT =	K Desktop Environment, generator for wrappers around Qt and KDE
DISTNAME =	smokegen-${MODKDE_VERSION}

SHARED_LIBS =	smokebase		0.0 # 3.0
SHARED_LIBS +=	cppparser		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtXml

MODKDE4_USE =

NO_REGRESS =	Yes

.include <bsd.port.mk>
