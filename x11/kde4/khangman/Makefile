# $OpenBSD$

COMMENT =	hangman game for KDE
DISTNAME =	khangman-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += kdecore kdeui kio knewstuff3 phonon keduvocdocument

LIB_DEPENDS = 	x11/kde4/libkdeedu

.include <bsd.port.mk>
