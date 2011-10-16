# $OpenBSD$

COMMENT =	some fucking learning tool for KDE
DISTNAME =	ktouch-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio phonon

RUN_DEPENDS =	x11/kde4/runtime

LIB_DEPENDS = 	x11/kde4/libs

.include <bsd.port.mk>
