# $OpenBSD$

COMMENT =	KDE 4 KPart for SVG
DISTNAME =	svgpart-${VERSION}

LIB_DEPENDS += 	x11/kde4/libs
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore kdeui kio kparts nepomuk nepomukutils
WANTLIB += soprano

.include <bsd.port.mk>
