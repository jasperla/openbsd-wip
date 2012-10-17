# $OpenBSD$

COMMENT =	K Desktop Environment, image viewer
DISTNAME =	gwenview-${MODKDE_VERSION}
PKGNAME =	${DISTNAME:S/gwenview/gwenview4/}

SHARED_LIBS =	gwenviewlib               0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtOpenGL
WANTLIB += kdeui kfile kio kipi konq kparts nepomuk
WANTLIB += nepomukutils phonon soprano
WANTLIB += exiv2 jpeg

BUILD_DEPENDS =	misc/shared-desktop-ontologies

LIB_DEPENDS = 	graphics/jpeg \
		x11/kde4/baseapps \
		x11/kde4/libkipi

.include <bsd.port.mk>
