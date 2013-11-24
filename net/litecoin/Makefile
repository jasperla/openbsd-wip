# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		P2P payment system

V =			0.8.5.1
DISTNAME =		litecoin-project-litecoin-v${V}
PKGNAME =		litecoin-${V}

DIFF_ARGS =		-a

CATEGORIES =		net

HOMEPAGE =		http://www.litecoin.org/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto db_cxx m miniupnpc pthread
WANTLIB += ssl stdc++ z leveldb

MODULES =		x11/qt4

MASTER_SITES =		https://github.com/litecoin-project/litecoin/tarball/v${V}/

LIB_DEPENDS =		devel/boost>=1.53 \
			databases/db/v4 \
			net/miniupnp/miniupnpc \
			databases/leveldb

MAKE_ENV =		USE_UPNP=0 CXX="${CXX}" \
			BOOST_LIB_SUFFIX=-mt LDFLAGS="-L${LOCALBASE}/lib \
			-L${LOCALBASE}/lib/db4" CXXFLAGS="${CXXFLAGS} \
			-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

QMAKE =			${LOCALBASE}/bin/qmake4
USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/litecoin-project-litecoin-6cef39c

do-configure:
	@cd ${WRKSRC} && \
		${QMAKE} ${MAKE_ENV} bitcoin-qt.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/litecoin-qt ${PREFIX}/bin
	mv ${WRKDIST}/contrib/debian/manpages/bitcoind.1 \
		${WRKDIST}/contrib/debian/manpages/litecoind.1
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/litecoind.1 \
		${PREFIX}/man/man1
	mv ${WRKDIST}/contrib/debian/manpages/bitcoin.conf.5 \
		${WRKDIST}/contrib/debian/manpages/litecoin.conf.5
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/litecoin.conf.5 \
		${PREFIX}/man/man5

.include <bsd.port.mk>
