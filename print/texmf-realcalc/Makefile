# $OpenBSD: Makefile,v 1.41 2010/04/25 10:36:05 jsg Exp $

COMMENT=	Real arithmetic with big values and high precision

DISTNAME=	realcalc
PKGNAME=	texmf-${DISTNAME}-199301
EXTRACT_SUFX=	.zip
CATEGORIES=	print

MASTER_SITES=	http://mirror.ctan.org/macros/generic/
HOMEPAGE=	http://www.ctan.org/tex-archive/help/Catalogue/entries/

# Distribution without money seems ok
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf-local/tex/realcalc
	${INSTALL_DATA} ${WRKSRC}/realcalc.tex ${PREFIX}/share/texmf-local/tex/realcalc/realcalc.sty

.include <bsd.port.mk>
