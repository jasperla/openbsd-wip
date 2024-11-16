COMMENT=		ncurses BitTorrent client based on libTorrent

CATEGORIES=		net

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2+
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=             rakshasa
GH_PROJECT=             rtorrent
GH_TAGNAME=             v0.10.0

WANTLIB += ${COMPILER_LIBCXX} c curl curses m pthread
WANTLIB += torrent>=23 cppunit execinfo

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/cppunit \
			net/libtorrent>=0.14.0 \
			net/curl

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.16
##CONFIGURE_ENV +=	LDFLAGS=-pthread
##CONFIGURE_ARGS=		--disable-debug

pre-patch:
	cp ${FILESDIR}/bootstrap ${WRKSRC}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtorrent
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rtorrent
	${INSTALL_DATA} ${WRKSRC}/doc/rtorrent.rc \
		${PREFIX}/share/examples/rtorrent/rtorrent.rc


.include <bsd.port.mk>
