# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		P2P payment system

V =			0.5.1
REV =			gb12fc3e
DISTNAME =		bitcoin-bitcoin-v${V}-0-${REV}
PKGNAME =		bitcoin-${V}

CATEGORIES =		net

HOMEPAGE =		http://www.bitcoin.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto db_cxx m miniupnpc pthread
WANTLIB += ssl stdc++ z

MASTER_SITES =		https://github.com/bitcoin/bitcoin/tarball/v${V}/

LIB_DEPENDS =		devel/glib2 \
			devel/boost \
			databases/db/v4 \
			net/miniupnpc

MAKE_FLAGS =		USE_UPNP=0 PIE=1 CXX=${CXX} BOOST_LIB_SUFFIX=-mt\
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/db4" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/db4"

USE_GMAKE =		Yes

NO_REGRESS =		Yes

MAKE_FILE =		makefile.unix
WRKDIST =		${WRKDIR}/bitcoin-bitcoin-5623ee7
WRKSRC =		${WRKDIST}/src

ALL_TARGET =		bitcoind

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bitcoind ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/bitcoind.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIST}/contrib/debian/manpages/bitcoin.conf.5 \
		${PREFIX}/man/man5

.include <bsd.port.mk>
