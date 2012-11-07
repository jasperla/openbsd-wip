# $gate: Makefile,v 1.4 2010/02/14 00:53:34 dukzcry Exp $

COMMENT=		simple node-to-node virtual network
VERSION=		v1-4142
DISTNAME=		n2n-${VERSION}
PKGNAME=		${DISTNAME}
CATEGORIES=		net

# This project hasn't any mirrors -- only main svn revsystem storage.
# So using my own mirror for download
MASTER_SITES=		http://dukzcry.cc/hlam/distfiles/
DISTFILES=		${PKGNAME}.tar.gz

HOMEPAGE=		http://www.ntop.org/n2n/

MAINTAINER=		dukzcry <lomka@gero.in>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		No

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}
	${INSTALL_PROGRAM} ${WRKDIST}/supernode \
	    ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/supernode.1 \
	    ${PREFIX}/man/man1

.include <bsd.port.mk>
