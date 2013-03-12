# $OpenBSD$

COMMENT =	scientific calculator for KDE4
DISTNAME =	kalgebra-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml kdeclarative
WANTLIB += analitza analitzagui analitzaplot kdeui khtml kio kjs kparts
WANTLIB += nepomuk nepomukutils plasma soprano

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	x11/kde4/analitza

.include <bsd.port.mk>
