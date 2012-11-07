# $OpenBSD: Makefile,v 1.14 2011/11/14 11:13:42 Exp $

COMMENT=	POP/IMAP/SMTP/CalDAV/CardDAV/LDAP Exchange Gateway

V=		3.9.6
DISTNAME=	davmail-${V}-1843
PKGNAME= 	davmail-${V}
CATEGORIES=	productivity

HOMEPAGE=	http://davmail.sourceforge.net

EXTRACT_SUFX =         .zip

# GPL
PERMIT_PACKAGE_CDROM=	GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	GPL
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=project/davmail/davmail/${V}/}

MODULES=	java
MODJAVA_VER=	1.5+
MODJAVA_JRERUN= Yes
MAKE_ENV+=              JAVA_HOME=${JAVA_HOME}
RUN_DEPENDS=            java/javaPathHelper

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

INSTALL_DIR =           davmail

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}
	${INSTALL_DATA} ${WRKDIR}/davmail.jar	${PREFIX}/share/${INSTALL_DIR}/
	${INSTALL_DATA} ${WRKDIR}/davmail.sh	${PREFIX}/bin/davmail
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}/lib
	${INSTALL_DATA} ${WRKDIR}/lib/*		${PREFIX}/share/${INSTALL_DIR}/lib/

.include <bsd.port.mk>
