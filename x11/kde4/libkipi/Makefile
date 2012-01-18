# $OpenBSD$

COMMENT =	image plugins infrastructure for KDE
DISTNAME =	libkipi-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kipi		0.1 # 4.7

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio kfile kparts nepomuk nepomukutils soprano

MODKDE4_USE =	libs
RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
