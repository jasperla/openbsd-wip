# $OpenBSD$
# $RedRiver: Makefile,v 1.4 2009/11/24 23:05:43 andrew Exp $

COMMENT=	filter which improves readability of email and Usenet posts

DISTNAME=	t-prot-2.98
CATEGORIES=    	mail news

MAINTAINER=	Andrew Fresh <andrew@afresh1.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.escape.de/~tolot/mutt/t-prot/downloads/

CONFIGURE_STYLE=	none
NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/t-prot ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/t-prot.1 ${PREFIX}/man/man1/t-prot.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA} ${WRKSRC}/README    ${PREFIX}/share/doc/t-prot/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/t-prot
	${INSTALL_DATA} ${WRKSRC}/contrib/* ${PREFIX}/share/examples/t-prot/

.include <bsd.port.mk>
