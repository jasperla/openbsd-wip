# $OpenBSD $

COMMENT=	GpsPrune is application for working with GPS data

V=		13.2
DISTNAME=	gpsprune_${V}
DISTFILES=  ${DISTNAME}.jar
PKGNAME= 	gpsprune-${V}
CATEGORIES=	geo

MAINTAINER= Sergey Bronnikov <estetus@gmail.com>

HOMEPAGE=	http://activityworkshop.net/software/gpsprune/

# GPL
PERMIT_PACKAGE_CDROM=	GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	GPL
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	java
MODJAVA_VER=	1.5+
MODJAVA_JRERUN= Yes
MAKE_ENV+=              JAVA_HOME=${JAVA_HOME}
RUN_DEPENDS=            java/javaPathHelper

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

INSTALL_DIR =           gpsprune

do-extract:

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${INSTALL_DIR}
	${INSTALL_DATA} ${DISTDIR}/${DISTNAME}.jar	${PREFIX}/share/${INSTALL_DIR}/gpsprune.jar
	${INSTALL_DATA} ${FILESDIR}/gpsprune 	${PREFIX}/bin/
	chown ${BINOWN}:${BINGRP} $(PREFIX)/bin/gpsprune
	chmod +x $(PREFIX)/bin/gpsprune

.include <bsd.port.mk>
