# $OpenBSD$

COMMENT =	K Desktop Environment, image viewer
DISTNAME =	gwenview-${VERSION}
PKGNAME =	gwenview4-${VERSION}
REVISION =	0

SHARED_LIBS +=  gwenviewlib               0.0 # 4.7

LIB_DEPENDS += 	x11/kde4/libs  \
		x11/kde4/baseapps \
		x11/kde4/libkipi

RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kfile kio kipi konq kparts nepomuk
WANTLIB += nepomukutils phonon soprano
WANTLIB += exiv2 jpeg

.include <bsd.port.mk>
