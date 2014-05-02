# $OpenBSD$

COMMENT =		P2P payment system

V =			0.9.1
DISTNAME =		bitcoin-bitcoin-v${V}
PKGNAME =		bitcoin-${V}

CATEGORIES =		net

HOMEPAGE =		http://www.bitcoin.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = boost_chrono-mt boost_filesystem boost_program_options-mt
WANTLIB += boost_system boost_thread-mt c crypto db_cxx m pthread
WANTLIB += ssl stdc++

MASTER_SITES =		https://github.com/bitcoin/bitcoin/tarball/v${V}/

BUILD_DEPENDS =		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

LIB_DEPENDS =		devel/boost>=1.53 \
			databases/db/v4

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
CONFIGURE_ARGS +=	--with-incompatible-bdb \
			--disable-tests
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4"

FLAVORS =		no_x11 debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug
.endif

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gui
.else

WANTLIB += QtDBus QtGui QtNetwork QtXml miniupnpc protobuf qrencode
WANTLIB += z

RUN_DEPENDS +=		devel/desktop-file-utils

MODULES =		x11/qt4

LIB_DEPENDS +=		devel/protobuf \
			graphics/libqrencode \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib/db4 -L${X11BASE}/lib -L${LOCALBASE}/lib" 
.endif

# see TODO
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/bitcoin-bitcoin-66a2ae9

BTCCONTRIBDIR =		${WRKDIST}/contrib/debian

post-patch:
	cd ${WRKSRC} && \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	${INSTALL_MAN} ${BTCCONTRIBDIR}/manpages/bitcoind.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${BTCCONTRIBDIR}/manpages/bitcoin.conf.5 \
		${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA} ${BTCCONTRIBDIR}/examples/bitcoin.conf \
	    ${PREFIX}/share/examples/bitcoin

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_MAN} ${BTCCONTRIBDIR}/manpages/bitcoin-qt.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE} -c \
		${BTCCONTRIBDIR}/bitcoin-qt.desktop \
		${PREFIX}/share/applications/bitcoin-qt.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin128.png \
	    	${PREFIX}/share/pixmaps/bitcoin128.png
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin128.xpm \
	    	${PREFIX}/share/pixmaps/bitcoin128.xpm
.endif


.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
