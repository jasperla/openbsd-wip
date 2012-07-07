# $OpenBSD$

COMMENT =	K Desktop Environment, torrent client
V =		4.2.0
DISTNAME =	ktorrent-${V}
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

MASTER_SITES =	${HOMEPAGE}downloads/${V}/

MODKDE4_USE =	workspace

LIBVER =	${V:C/^4/1/}
LIB_DEPENDS =	audio/taglib \
		databases/sqlite3 \
		STEM->=${LIBVER}:x11/kde4/libktorrent

.include <bsd.port.mk>
