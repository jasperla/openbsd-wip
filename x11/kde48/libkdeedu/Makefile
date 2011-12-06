# $OpenBSD$

COMMENT =	libraries used by the KDE Education Project applications
DISTNAME =	libkdeedu-${MODKDE_VERSION}

SHARED_LIBS =	keduvocdocument		0.0 # 4.7

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio

MODKDE4_USE =	libs
RUN_DEPENDS =	x11/gtk+2,-guic

.include <bsd.port.mk>
