# $OpenBSD$

COMMENT =	Graph Theory IDE for KDE
DISTNAME =	rocs-${MODKDE_VERSION}

SHARED_LIBS +=  rocslib			0.0 # 4.7

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdecore kdeui kio knewstuff3 kparts krosscore
WANTLIB += krossui ktexteditor nepomuk nepomukutils plasma 
WANTLIB += soprano

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS = 	x11/kde4/libs

RUN_DEPENDS =	x11/kde4/runtime

.include <bsd.port.mk>
