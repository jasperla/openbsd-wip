# $OpenBSD$

COMMENT =	K Desktop Environment, calculator
DISTNAME =	kalgebra-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml kdeclarative
WANTLIB += kdeui khtml kio kjs kparts ncurses nepomuk
WANTLIB += nepomukutils phonon plasma soprano
WANTLIB += readline analitza analitzagui

LIB_DEPENDS = 	x11/kde48/libkdeedu \
		x11/kde48/analitza

.include <bsd.port.mk>
