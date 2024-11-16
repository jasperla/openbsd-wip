COMMENT=		BitTorrent library written in C++

SHARED_LIBS=	  	torrent 23.0
CATEGORIES=		net devel

HOMEPAGE=		https://rakshasa.github.io/rtorrent/

# GPLv2
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		rakshasa
GH_PROJECT=		libtorrent
GH_TAGNAME=		v0.14.0

WANTLIB=		crypto m pthread ${COMPILER_LIBCXX} z \
			execinfo cppunit

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/libtool
LIB_DEPENDS=		devel/cppunit

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.16
CONFIGURE_ARGS=		--disable-mincore

DEBUG_PACKAGES =	${BUILD_PACKAGES}

#pre-patch:
#	cp ${FILESDIR}/bootstrap ${WRKSRC}

.include <bsd.port.mk>
