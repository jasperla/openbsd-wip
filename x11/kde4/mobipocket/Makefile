# $OpenBSD$

COMMENT =	collection of plugins to handle mobipocket files for KDE
DISTNAME =	mobipocket-${MODKDE_VERSION}

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio okularcore streamanalyzer streams

LIB_DEPENDS = 	x11/kde4/okular

.include <bsd.port.mk>
