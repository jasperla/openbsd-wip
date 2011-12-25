# $home: Makefile,v 1.5 2009/07/27 16:14:15 dukzcry Exp $

COMMENT=                chroot for dynamically linked applications
VERSION=                1.4
DISTNAME=               chroot_safe-${VERSION}
PKGNAME=                ${DISTNAME}
CATEGORIES=		security

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=chrootsafe/}
DISTFILES=		${PKGNAME}.tgz

HOMEPAGE=               http://chrootsafe.sourceforge.net/

MAINTAINER=			Sergey Bronnikov <estetus@gmail.com>

# Custom or GPL (?)
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes 

USE_X11=		No
USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple

INSTNAME=		chroot_safe

pre-install:
	@chmod 750 ${WRKDIST}/${INSTNAME}

do-install:
	${INSTALL_PROGRAM_DIR} \
		${PREFIX}/libexec/${INSTNAME}
	${INSTALL_SCRIPT} ${WRKDIST}/${INSTNAME} \
		${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKDIST}/${INSTNAME}.so \
		${PREFIX}/libexec/${INSTNAME}/
	${INSTALL_MAN} ${WRKDIST}/${INSTNAME}.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>


