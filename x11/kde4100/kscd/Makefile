# $OpenBSD$

COMMENT =	audio CD player for KDE
DISTNAME =	kscd-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kcddb kcompactdisc kdeui kio solid
WANTLIB += musicbrainz3

MODULES =	multimedia/phonon

LIB_DEPENDS =	audio/libmusicbrainz \
		x11/kde4/libkcddb>=${MODKDE4_DEP_VERSION} \
		x11/kde4/libkcompactdisc>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
