# $OpenBSD$

COMMENT =	K Desktop Environment, vocabulary trainer
DISTNAME =	parley-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xrender
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdeui keduvocdocument khtml kio kjs
WANTLIB += knewstuff3 kparts krosscore krossui nepomuk nepomukutils
WANTLIB += phonon plasma soprano
WANTLIB += xml2 xslt

LIB_DEPENDS = 	textproc/libxml \
		textproc/libxslt \
		x11/kde4/attica \
		x11/kde4/libkdeedu

.include <bsd.port.mk>
