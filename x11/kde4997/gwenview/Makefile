# $OpenBSD$

COMMENT =	K Desktop Environment, image viewer
DISTNAME =	gwenview-${MODKDE_VERSION}

SHARED_LIBS =	gwenviewlib               0.0 # 4.7

WANTLIB =  c m pthread stdc++ z
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtOpenGL
WANTLIB += kactivities kdeui kfile kio kipi konq kparts nepomuk
WANTLIB += nepomukutils phonon_s solid soprano
WANTLIB += exiv2 jpeg lcms2 png

BUILD_DEPENDS =	misc/shared-desktop-ontologies

LIB_DEPENDS = 	graphics/jpeg \
		graphics/lcms2 \
		graphics/png \
		x11/kde4/baseapps \
		x11/kde4/kactivities \
		x11/kde4/libkipi

.include <bsd.port.mk>
