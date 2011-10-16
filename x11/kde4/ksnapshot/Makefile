# $OpenBSD$

COMMENT =	shaphot capturing utility for KDE
DISTNAME =	ksnapshot-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xfixes
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio kipi

LIB_DEPENDS = 	x11/kde4/libkipi

.include <bsd.port.mk>
