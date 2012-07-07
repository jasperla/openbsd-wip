# $OpenBSD$

COMMENT =	K Desktop Environment, desktop activity
DISTNAME =	kactivities-${MODKDE_VERSION}

SHARED_LIBS =	kactivities	0.0 # 6.0

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg c m
WANTLIB += kdeui nepomuk nepomukquery pthread soprano stdc++

BUILD_DEPENDS =		x11/kde4/libs

.include <bsd.port.mk>
