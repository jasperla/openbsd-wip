# $OpenBSD$

COMMENT =	image plugins infrastructure for KDE
DISTNAME =	libkipi-${MODKDE_VERSION}

SHARED_LIBS =	kipi		0.0 # 4.7

WANTLIB =  QtDBus QtGui QtNetwork QtSvg QtXml c kdeui
WANTLIB += kio m stdc++
WANTLIB += kfile kparts nepomuk nepomukutils soprano

MODKDE4_USE =	libs

.include <bsd.port.mk>
