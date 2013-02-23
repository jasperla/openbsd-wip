# $OpenBSD: Makefile,v 1.15 2013/02/07 20:21:03 jasper Exp $

COMMENT=		graphical editing environment for eclipse

V=			3.8.1
DISTNAME=		GEF-ALL-${V}
PKGNAME=		eclipse-plugin-gef-sdk-${V}
CATEGORIES+=		java

HOMEPAGE=		http://www.eclipse.org/gef/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/tools/gef/downloads/drops/${V}/R201208200205/

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)

.include <bsd.port.mk>
