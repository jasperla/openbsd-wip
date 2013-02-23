# $OpenBSD: Makefile,v 1.15 2013/02/07 20:21:03 jasper Exp $

COMMENT=		Eclipse Modeling Framework (EMF)

V=			2.8.1
DISTNAME=		emf-xsd-SDK-${V}
PKGNAME=		eclipse-plugin-emf-sdk-${V}
CATEGORIES+=		java

HOMEPAGE=		http://www.eclipse.org/emf/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.eclipse.org/modeling/emf/emf/downloads/drops/${V}/R201209170436/

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
