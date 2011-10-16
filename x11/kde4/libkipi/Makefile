# $OpenBSD$

COMMENT =	image plugins infrastructure for KDE
DISTNAME =	libkipi-${MODKDE_VERSION}

SHARED_LIBS =	kipi		0.0 # 4.7

WANTLIB =  QtDBus QtGui QtNetwork QtSvg QtXml c kdecore kdeui
WANTLIB += kio m stdc++
WANTLIB += kfile kparts nepomuk nepomukutils soprano

LIB_DEPENDS = 	x11/kde4/libs

.include <bsd.port.mk>
