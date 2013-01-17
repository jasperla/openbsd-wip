# $OpenBSD$

COMMENT =	KDE CDDB library
DISTNAME =	libkcddb-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio
WANTLIB += musicbrainz5

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/libmusicbrainz5

.include <bsd.port.mk>
