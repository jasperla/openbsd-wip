# $OpenBSD$

COMMENT =	K Desktop Environment, hangman game
DISTNAME =	khangman-${MODKDE4_VERSION}

SHARED_LIBS =	khangmanengine		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += kdeui kio knewstuff3 phonon_s keduvocdocument

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	x11/kde4/libkdeedu

.include <bsd.port.mk>
