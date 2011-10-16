# $OpenBSD$

COMMENT =	general purpose flash card program for KDE
DISTNAME =	kwordquiz-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore keduvocdocument kdeui kio knewstuff3 knotifyconfig
WANTLIB += kprintutils phonon

LIB_DEPENDS = 	x11/kde4/libkdeedu

.include <bsd.port.mk>
