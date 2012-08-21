# $OpenBSD$

COMMENT=	tools for building TCP client-server applications

DISTNAME=	ucspi-tcp-0.88
HOMEPAGE=	http://cr.yp.to/ucspi-tcp.html
CATEGORIES=	net

MASTER_SITES1=	http://www.nrg4u.com/qmail/
PATCHFILES=	ucspi-tcp-ssl-20050405.patch.gz:1

MASTER_SITES=	http://cr.yp.to/ucspi-tcp/ \
		ftp://ftp.net.ohio-state.edu/pub/networking/mail/qmail/ \
		ftp://ftp.jp.qmail.org/qmail/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check
WANTLIB=	c crypto ssl

do-configure:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
