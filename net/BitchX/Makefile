COMMENT=		feature rich IRC client derived from ircII
DISTNAME=		BitchX-1.2
CATEGORIES=		net
HOMEPAGE=		http://bitchx.ca/
MAINTAINER=		Connor Cooper <connor.a.cooper@gmail.com>
# BSD + GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c crypto ncurses ssl m
CONFIGURE_STYLE=	gnu
MASTER_SITES=		${HOMEPAGE}
CONFIGURE_ARGS+=	--with-ssl
BUILD_DEPENDS=		archivers/bzip2

.include <bsd.port.mk>
