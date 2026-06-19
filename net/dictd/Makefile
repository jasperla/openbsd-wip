COMMENT-main=	Dictionary Server Protocol client
COMMENT-server=	Dictionary Server Protocol server

V=		1.13.1
DISTNAME=	dictd-$V

PKGNAME-main=	dictd-client-$V
PKGNAME-server=	dictd-server-$V
#REVISION-main=	3
#REVISION-server=1

CATEGORIES=	net education

HOMEPAGE=	http://www.dict.org
MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

# GPL v2
PERMIT_PACKAGE=	Yes
WANTLIB=		c z maa

LIB_DEPENDS=	devel/libmaa

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dict/}

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--prefix=${PREFIX}

CFLAGS +=	-I${LOCALBASE}/include

MULTI_PACKAGES=	-main -server

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dictd/
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/dictd

.include <bsd.port.mk>
