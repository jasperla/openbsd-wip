# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		P2P payment system

V =			0.8.5
DISTNAME =		bitcoin-bitcoin-v${V}
PKGNAME =		bitcoin-${V}

DIFF_ARGS =		-a

CATEGORIES =		net

HOMEPAGE =		http://www.bitcoin.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto db_cxx m miniupnpc pthread
WANTLIB += ssl stdc++ z leveldb

MASTER_SITES =		https://github.com/bitcoin/bitcoin/tarball/v${V}/

LIB_DEPENDS =		devel/boost>=1.53 \
			databases/db/v4 \
			net/miniupnp/miniupnpc \
			databases/leveldb

MAKE_FLAGS =		USE_UPNP=0 CXX="${CXX}" \
			BOOST_LIB_SUFFIX=-mt LDFLAGS="-L${LOCALBASE}/lib \
			-L${LOCALBASE}/lib/db4" CXXFLAGS="${CXXFLAGS} \
			-I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

USE_GMAKE =		Yes

MAKE_FILE =		makefile.unix
WRKDIST =		${WRKDIR}/bitcoin-bitcoin-8090e11
WRKSRC =		${WRKDIST}/src

ALL_TARGET =		bitcoind

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bitcoind ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/bitcoind.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/bitcoin.conf.5 \
		${PREFIX}/man/man5

.include <bsd.port.mk>
