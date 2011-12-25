# $OpenBSD$

COMMENT=	"802.11 WEP / WPA-PSK key cracker and related tools"

DISTNAME=	aircrack-ng-1.1
CATEGORIES=	net
MASTER_SITES=	http://download.aircrack-ng.org/

#http://download.aircrack-ng.org/aircrack-ng-1.1.tar.gz

HOMEPAGE=	http://www.aircrack-ng.org/

MAINTAINER=     ???

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

USE_GMAKE=	Yes
ALL_TARGET=	aircrack-ng airdecap-ng ivstools kstats

pre-patch:
	@cat ${PKGDIR}/MESSAGE

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aircrack-ng ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/airdecap-ng ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ivstools ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/kstats ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/manpages/aircrack-ng.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/manpages/airdecap-ng.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/manpages/ivstools.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/manpages/kstats.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
