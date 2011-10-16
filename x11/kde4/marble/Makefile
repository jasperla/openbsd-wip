# $OpenBSD$

COMMENT =		K Desktop Environment, maps
DISTNAME =		marble-${MODKDE_VERSION}

SHARED_LIBS =	marblewidget		0.0 # 0.12

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdecore kdeui kio knewstuff3 kparts nepomuk
WANTLIB += nepomukutils phonon plasma soprano
WANTLIB += gps

MODKDE4_USE =	libs

LIB_DEPENDS = 	misc/gpsd,-main

.include <bsd.port.mk>
