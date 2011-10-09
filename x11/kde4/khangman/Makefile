# $OpenBSD$

COMMENT =		hangman game for KDE
DISTNAME =		khangman-${VERSION}

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/libkdeedu

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += kdecore kdeui kio knewstuff3 phonon keduvocdocument

.include <bsd.port.mk>
