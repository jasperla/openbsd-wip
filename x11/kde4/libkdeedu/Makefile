# $OpenBSD$

COMMENT =	libraries used by the KDE Education Project applications
DISTNAME =	libkdeedu-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS +=  keduvocdocument           0.0 # 4.7

LIB_DEPENDS = 	x11/kde4/libs

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore kdeui kio

.include <bsd.port.mk>
