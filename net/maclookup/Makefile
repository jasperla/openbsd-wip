# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT=	simple filter to look up MAC address vendors

DISTNAME=	maclookup-1.1

CATEGORIES=	net textproc

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

RUN_DEPENDS=	net/arp-scan # lazy way to get the data files

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

do-configure:
	cd ${WRKSRC}; \
	    perl -pi -e 's,/usr/local,${LOCALBASE},g' maclookup.pl maclookup.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/maclookup.pl ${PREFIX}/bin/maclookup
	${INSTALL_MAN} ${WRKSRC}/maclookup.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
