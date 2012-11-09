# $OpenBSD$

COMMENT =	K Desktop Environment, calculator
DISTNAME =	kalgebra-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml kdeclarative
WANTLIB += kdeui khtml kio kjs kparts nepomuk
WANTLIB += nepomukutils phonon_s plasma soprano
WANTLIB += analitza analitzagui

LIB_DEPENDS = 	x11/kde4/libkdeedu \
		x11/kde4/analitza

.include <bsd.port.mk>
