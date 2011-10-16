# $OpenBSD$

COMMENT =	K Desktop Environment, calculator
DISTNAME =	kalgebra-${MODKDE_VERSION}

SHARED_LIBS =	analitza		0.0	# 4.7
SHARED_LIBS +=	analitzagui		0.0	# 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui khtml kio kjs kparts ncurses nepomuk
WANTLIB += nepomukutils phonon plasma soprano
WANTLIB += readline

LIB_DEPENDS = 	x11/kde4/libkdeedu

.include <bsd.port.mk>
