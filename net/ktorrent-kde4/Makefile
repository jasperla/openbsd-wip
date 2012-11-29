# $OpenBSD$

CATEGORIES =	net
COMMENT =	torrent client for KDE 4
DISTNAME =	ktorrent-${KTORRENT_VERSION}
HOMEPAGE =	http://ktorrent.org/
REVISION =	1

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktcore		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kcmutils kdeui kdewebkit kdnssd kemoticons kidletime kio
WANTLIB += knotifyconfig kparts kprintutils krosscore ktorrent kutils
WANTLIB += kworkspace nepomuk nepomukutils phonon_s plasma solid soprano
WANTLIB += syndication tag

MASTER_SITES =	${HOMEPAGE}downloads/${KTORRENT_VERSION}/

# GPLv2+
PERMIT_DISTFILES_CDROM =        Yes
PERMIT_DISTFILES_FTP =          Yes
PERMIT_PACKAGE_CDROM =          Yes
PERMIT_PACKAGE_FTP =            Yes

MODULES =	x11/kde4
MODKDE4_USE =	pim workspace

LIB_DEPENDS =	audio/taglib \
		STEM->=${LIBKTORRENT_VERSION}:net/libktorrent

.include <bsd.port.mk>
