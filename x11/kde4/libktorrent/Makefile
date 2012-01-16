# $OpenBSD$

COMMENT =	KTorrent engine
DISTNAME =	libktorrent-1.1.3
HOMEPAGE =	http://ktorrent.org/

SHARED_LIBS =	ktorrent	0.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += kdeui kio solid
WANTLIB += gcrypt gmp qca

MASTER_SITES =	${HOMEPAGE}downloads/4.1.3/

BUILD_DEPENDS =	devel/boost \
		devel/doxygen

LIB_DEPENDS =	devel/gmp \
		security/libgcrypt \
		security/qca2

.include <bsd.port.mk>
