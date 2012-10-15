# $OpenBSD$

COMMENT =	K Desktop Environment, web browser based on WebKit
HOMEPAGE =	https://projects.kde.org/projects/extragear/base/kwebkitpart
DISTNAME =	kwebkitpart-1.2

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://malcolm.ecentrum.hu/distfiles/ \
		http://www.ohvost.ru/dnl/kde/src/

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdeui kio kparts kdewebkit nepomuk nepomukutils
WANTLIB += soprano

MODKDE4_USE =	libs

.include <bsd.port.mk>
