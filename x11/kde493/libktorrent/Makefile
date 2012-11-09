# $OpenBSD$

COMMENT =	K Desktop Environment, KTorrent engine
DISTNAME =	libktorrent-${LIBKTORRENT_VERSION}
HOMEPAGE =	http://ktorrent.org/

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktorrent	0.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += kdeui kio solid
WANTLIB += gcrypt gmp qca2

MASTER_SITES =	${HOMEPAGE}downloads/${KTORRENT_VERSION}/

BUILD_DEPENDS =	devel/boost \
		devel/doxygen

LIB_DEPENDS =	devel/gmp \
		security/libgcrypt \
		security/qca2

.include <bsd.port.mk>
