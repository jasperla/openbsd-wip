# $OpenBSD$

COMMENT =		P2P payment system

GH_ACCOUNT =		bitcoin
GH_PROJECT =		bitcoin
GH_TAGNAME =		v0.13.2

SHARED_LIBS +=  bitcoinconsensus          0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		http://www.bitcoin.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender boost_chrono-mt
WANTLIB += boost_filesystem boost_program_options-mt boost_system
WANTLIB += boost_system-mt boost_thread-mt c crypto db_cxx event_core
WANTLIB += event_extra event_pthreads expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 iconv intl m pcre
WANTLIB += png pthread pthread-stubs ssl xcb

BUILD_DEPENDS =		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

LIB_DEPENDS =		devel/boost>=1.53 \
			devel/libevent2 \
			databases/db/v4

USE_GMAKE =		Yes

MODULES =		lang/clang

MODCLANG_ARCHS=	*
MODCLANG_LANGS=	c++

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

MODULES +=		x11/qt4

LIB_DEPENDS +=		devel/protobuf \
			graphics/libqrencode \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui=qt4

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

# see TODO
NO_TEST =		Yes

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
