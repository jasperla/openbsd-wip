# $OpenBSD$

COMMENT =	K Desktop Environment, image plugins infrastructure
DISTNAME =	libkipi-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kipi		2.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio kfile kparts nepomuk nepomukutils soprano

MODKDE4_USE =	libs

.include <bsd.port.mk>
