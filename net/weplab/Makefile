# $OpenBSD$

COMMENT=	"Wireless WEP encryption security analyzer"

DISTNAME=	weplab-0.1.4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=weplab/}

HOMEPAGE=	http://weplab.sourceforge.net/

MAINTAINER=     Anton Karpov <toxa@toxahost.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

CONFIGURE_STYLE= gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/weplab ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/weplab.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
