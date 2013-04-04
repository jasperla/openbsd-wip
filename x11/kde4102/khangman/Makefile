# $OpenBSD$

COMMENT =	KDE hangman game
DISTNAME =	khangman-${MODKDE4_VERSION}

SHARED_LIBS =	khangmanengine		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/keduvocdocument

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	x11/kde4/libkdeedu>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
