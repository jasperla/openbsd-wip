# $OpenBSD$

COMMENT=	tools for building TCP client-server applications

DISTNAME=	djbdns-1.05
HOMEPAGE=	http://cr.yp.to/djbdns.html
CATEGORIES=	net

MASTER_SITES=	http://cr.yp.to/djbdns/ \
		ftp://ftp.jp.qmail.org/qmail/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

ALL_TARGET=	default
INSTALL_TARGET=	setup check

RUN_DEPENDS=	net/ucspi-tcp \
		sysutils/freedt

pre-build:
	@${SUBST_CMD} ${WRKSRC}/dnscache-conf.c
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/djbdns
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
