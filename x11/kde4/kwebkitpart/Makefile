# $OpenBSD$

COMMENT =	KPart module for WebKit
DISTNAME =	kwebkitpart-1.2

#SHARED_LIBS +=  rocslib			0.0 # 4.7

MASTER_SITES =	http://www.ohvost.ru/dnl/kde/src/

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdecore kdeui kio kparts kdewebkit nepomuk nepomukutils
WANTLIB += soprano

# BUILD_DEPENDS =	devel/boost

LIB_DEPENDS = 	x11/kde4/libs

RUN_DEPENDS =	x11/kde4/runtime

.include <bsd.port.mk>
