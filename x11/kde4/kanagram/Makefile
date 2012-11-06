# $OpenBSD$

COMMENT =	K Desktop Environment, letter order game
DISTNAME =	kanagram-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	kanagramengine		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui knewstuff3 phonon_s keduvocdocument

LIB_DEPENDS = 	x11/kde4/libkdeedu

.include <bsd.port.mk>
