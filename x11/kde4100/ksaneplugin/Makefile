# $OpenBSD$

COMMENT =	K Desktop Environment, scanner interface through libksane
DISTNAME =	ksaneplugin-${MODKDE_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += kdeui kio ksane

LIB_DEPENDS = 	x11/kde4/libksane

.include <bsd.port.mk>
