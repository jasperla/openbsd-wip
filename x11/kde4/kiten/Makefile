# $OpenBSD$

COMMENT =	Japanese reference tool for KDE
DISTNAME =	kiten-${MODKDE_VERSION}

SHARED_LIBS =	kiten			0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore kdeui khtml kio kjs kparts nepomuk nepomukutils
WANTLIB += phonon soprano

.include <bsd.port.mk>
