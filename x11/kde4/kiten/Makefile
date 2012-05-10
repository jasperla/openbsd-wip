# $OpenBSD$

COMMENT =	K Desktop Environment, Japanese reference tool
DISTNAME =	kiten-${MODKDE_VERSION}

SHARED_LIBS =	kiten			0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui khtml kio kjs kparts nepomuk nepomukutils
WANTLIB += phonon soprano

.include <bsd.port.mk>
