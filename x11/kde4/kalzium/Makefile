# $OpenBSD$

COMMENT =	K Desktop Environment, periodic system of elements
DISTNAME =	kalzium-${MODKDE_VERSION}

SHARED_LIBS =	science			0.0 # 4.7
SHARED_LIBS +=	compoundviewer		0.0 # 4.7

WANTLIB =  c m pthread soprano stdc++
WANTLIB += GL GLU ICE QtOpenGL SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui khtml kio kjs knewstuff3 kparts
WANTLIB += kunitconversion nepomuk nepomukutils phonon plasma
WANTLIB += avogadro boost_python-mt openbabel python2.7

LIB_DEPENDS = 	education/avogadro \
		math/eigen2 \
		misc/openbabel \
		lang/ocaml

.include <bsd.port.mk>
