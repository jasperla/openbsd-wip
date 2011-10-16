# $OpenBSD$

COMMENT =	K Desktop Environment, image viewer
DISTNAME =	gwenview-${MODKDE_VERSION}
PKGNAME =	${DISTNAME:S/gwenview/gwenview4/}
REVISION =	0

SHARED_LIBS =	gwenviewlib               0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kfile kio kipi konq kparts nepomuk
WANTLIB += nepomukutils phonon soprano
WANTLIB += exiv2 jpeg

LIB_DEPENDS = 	x11/kde4/baseapps \
		x11/kde4/libkipi

.include <bsd.port.mk>
