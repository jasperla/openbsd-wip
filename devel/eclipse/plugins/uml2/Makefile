# $OpenBSD: Makefile,v 1.12 2013/02/07 20:21:03 jasper Exp $

COMMENT=		UML diagram framework for Eclipse

V=			4.0.2
DISTNAME=		mdt-uml2-SDK-${V}
PKGNAME=		eclipse-plugin-uml2-sdk-${V}
CATEGORIES+=		java

HOMEPAGE=		http://www.eclipse.org/modeling/mdt/?project=uml2

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses

MASTER_SITES=		http://download.eclipse.org/modeling/mdt/uml2/downloads/drops/${V}/R201301140902/

RUN_DEPENDS=		devel/eclipse/plugins/emf>=2.8.1

do-install:
	cd ${WRKDIST} && tar cfL - eclipse | \
		(cd ${PREFIX} && tar -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html

.include <bsd.port.mk>
