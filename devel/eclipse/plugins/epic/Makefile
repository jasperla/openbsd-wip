# $OpenBSD: Makefile,v 1.13 2013/02/07 20:21:03 jasper Exp $

COMMENT=		Perl plugin for Eclipse IDE

V=			0.6.35
DISTNAME=		org.epic.updatesite_${V}_20090521
PKGNAME=		eclipse-plugin-epic-${V}
CATEGORIES+=		perl5

HOMEPAGE=		http://www.epic-ide.org/

MAINTAINER=		Carlos Valiente <yo@virutass.net>

# Common Public License Version 1.0 (http://www.eclipse.org/legal/cpl-v10.html)
PERMIT_PACKAGE_CDROM=	commercial distribution defend and indemnify clauses
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e-p-i-c/}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/eclipse
	cd ${WRKDIST}/org.epic.updatesite && tar cfL - features plugins | \
		(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
