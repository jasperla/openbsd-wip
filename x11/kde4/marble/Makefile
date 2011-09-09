# $OpenBSD$

COMMENT =		K Desktop Environment, maps
DISTNAME =		marble-${VERSION}

SHARED_LIBS +=	marblewidget		0.0 # 0.12

LIB_DEPENDS += 	x11/kde4/libs \
		misc/gpsd,-main

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdecore kdeui kio knewstuff3 kparts nepomuk
WANTLIB += nepomukutils phonon plasma soprano
WANTLIB += gps

.include <bsd.port.mk>
