# $OpenBSD$

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio phonon_s solid
WANTLIB += musicbrainz3

LIB_DEPENDS =	audio/libmusicbrainz

.include <bsd.port.mk>
