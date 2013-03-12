# $OpenBSD: Makefile,v 1.13 2013/02/07 20:21:03 jasper Exp $

COMMENT=		Web Tools Platform for Eclipse

V=			3.4.1
DISTNAME=		wtp4x-sdk-R-${V}-20120917174803
PKGNAME=		eclipse-plugin-wtp-sdk-${V}
CATEGORIES+=		java
PKG_ARCH=		*

HOMEPAGE=		http://www.eclipse.org/webtools/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Eclipse Public License Version 1.0 (http://www.eclipse.org/legal/epl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses

MASTER_SITES=		http://download.eclipse.org/webtools/downloads/drops/R${V}/R-${V}-20120917174803/


BUILD_DEPENDS=		archivers/gtar
RUN_DEPENDS=		devel/eclipse/plugins/emf>=2.8.1 \
			devel/eclipse/plugins/gef>=3.8.1

TAR=			${LOCALBASE}/bin/gtar

do-install:
	cd ${WRKDIST} && ${TAR} cf - eclipse | \
		(cd ${PREFIX} && ${TAR} -xf -)
	cd ${PREFIX}/eclipse && rm epl-v10.html notice.html
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}

.include <bsd.port.mk>
