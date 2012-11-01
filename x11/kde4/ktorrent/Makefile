# $OpenBSD$

COMMENT =	K Desktop Environment, torrent client
DISTNAME =	ktorrent-${KTORRENT_VERSION}
HOMEPAGE =	http://ktorrent.org/

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktcore		0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += kcmutils kdeui kdewebkit kdnssd kemoticons kidletime kio
WANTLIB += knotifyconfig kparts kprintutils krosscore ktorrent kutils
WANTLIB += kworkspace nepomuk nepomukutils phonon plasma solid soprano
WANTLIB += syndication tag

MASTER_SITES =	${HOMEPAGE}downloads/${KTORRENT_VERSION}/

MODKDE4_USE =	pim workspace

LIB_DEPENDS =	audio/taglib \
		STEM->=${LIBKTORRENT_VERSION}:x11/kde4/libktorrent

.include <bsd.port.mk>
