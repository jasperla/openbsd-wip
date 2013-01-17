# $OpenBSD$

COMMENT =	K Desktop Environment, KDE4 libraries for education apps
DISTNAME =	libkdeedu-${MODKDE_VERSION}

SHARED_LIBS =	keduvocdocument		0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio

MODKDE4_USE =	libs

.include <bsd.port.mk>
