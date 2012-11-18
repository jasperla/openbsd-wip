# $OpenBSD$

COMMENT =	K Desktop Environment, periodic system of elements
DISTNAME =	kalzium-${MODKDE_VERSION}

SHARED_LIBS =	science			0.0 # 4.7
SHARED_LIBS +=	compoundviewer		0.0 # 4.7

WANTLIB =  c m pthread soprano stdc++ ${MODPY_WANTLIB}
WANTLIB += GL GLU ICE SM X11 Xext lib/qt4/QtDBus
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui khtml kio kjs knewstuff3 kparts
WANTLIB += kunitconversion nepomuk nepomukutils phonon_s plasma
WANTLIB += avogadro boost_python-mt openbabel

MODULES =	x11/kde4 lang/ocaml lang/python

BUILD_DEPENDS =	math/eigen2 \
		math/facile

RUN_DEPENDS =	math/facile

LIB_DEPENDS = 	education/avogadro \
		misc/openbabel

.include <bsd.port.mk>
