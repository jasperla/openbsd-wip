# $OpenBSD$

CATEGORIES =	www
COMMENT =	Webkit-based KPart for KDE
HOMEPAGE =	https://projects.kde.org/projects/extragear/base/kwebkitpart
DISTNAME =	kwebkitpart-1.2
REVISION =	5

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	ftp://3ps.if.ua/pub/OpenBSD/distfiles/ \
		http://malcolm.ecentrum.hu/distfiles/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_DISTFILES_CDROM =        Yes
PERMIT_DISTFILES_FTP =          Yes
PERMIT_PACKAGE_CDROM =          Yes
PERMIT_PACKAGE_FTP =            Yes

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kdeui kio kparts kdewebkit nepomuk nepomukutils
WANTLIB += soprano

MODULES =	x11/kde4

MODKDE4_USE =	libs

.include <bsd.port.mk>
