# $OpenBSD$

COMMENT =	K Desktop Environment, simulate planetarium
DISTNAME =	kstars-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3
WANTLIB += cfitsio

LIB_DEPENDS = 	math/cfitsio

BUILD_DEPENDS =	math/eigen2 \
		x11/xplanet

RUN_DEPENDS =	math/eigen2 \
		x11/xplanet

.include <bsd.port.mk>
