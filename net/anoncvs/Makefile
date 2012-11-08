# $OpenBSD$

COMMENT=		anoncvs mirror software

DISTNAME=		anoncvs-1.0
CATEGORIES=		net

HOMEPAGE=		http://www.OpenBSD.org/

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://distfiles.nl/

EXTRACT_SUFX=		.shar

WRKDIST=		${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/anoncvssh ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/anoncvs/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/anoncvs/

.include <bsd.port.mk>
