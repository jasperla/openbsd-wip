# $OpenBSD$

COMMENT =	KDE 4 KPart for SVG
DISTNAME =	svgpart-${MODKDE_VERSION}

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdeui kio kparts nepomuk nepomukutils
WANTLIB += soprano

RUN_DEPENDS =	x11/kde4/baseapps

.include <bsd.port.mk>
