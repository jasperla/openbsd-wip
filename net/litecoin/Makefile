# $OpenBSD$

COMMENT =		P2P payment system

GH_ACCOUNT =		litecoin-project
GH_PROJECT =		litecoin
GH_TAGNAME =		v0.15.0.1rc1

DIFF_ARGS =		-a

CATEGORIES =		net

HOMEPAGE =		http://www.litecoin.org/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt

FLAVORS =		debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug
.endif

USE_GMAKE =		Yes

# C++11
COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
CONFIGURE_ARGS +=	--with-incompatible-bdb

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${X11BASE}/lib -L${LOCALBASE}/lib"

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CXXFLAGS +=		-std=c++11

MODULES +=		x11/qt5

LIB_DEPENDS +=		devel/protobuf \
			graphics/libqrencode \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui=qt5

RUN_DEPENDS +=		devel/desktop-file-utils

LIB_DEPENDS =		devel/boost \
			net/zeromq \
			databases/db/v4 \
			net/miniupnp/miniupnpc \
			databases/leveldb

post-patch:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

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

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
