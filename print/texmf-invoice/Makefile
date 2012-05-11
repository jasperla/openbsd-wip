# $OpenBSD: Makefile,v 1.41 2010/04/25 10:36:05 jsg Exp $

COMMENT=	Package for Writing Invoices

DISTNAME=	invoice
PKGNAME=	texmf-${DISTNAME}-0.8
EXTRACT_SUFX=	.zip
CATEGORIES=	print

MASTER_SITES=	http://mirror.ctan.org/macros/latex/contrib/
HOMEPAGE=	http://mirror.ctan.org/macros/latex/contrib/invoice/

# GPL 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/tex/latex/invoice
	${INSTALL_DATA} ${WRKSRC}/texput/* ${PREFIX}/share/texmf/tex/latex/invoice/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/latex/texmf-invoice
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/latex/texmf-invoice/

.include <bsd.port.mk>
