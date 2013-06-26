# $OpenBSD: Makefile,v 1.23 2011/12/02 08:29:45 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		NetBeans Java IDE

V=			7.3
REVISION=		0
DISTNAME=		netbeans-${V}-201302132200
PKGNAME=		netbeans-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.netbeans.org/

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# CDDL and GPLv2 dual-licensed
#
# For external components see:
#   http://www.netbeans.info/downloads/licence/netbeans-3rd-party.txt
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://dlc.sun.com.edgesuite.net/netbeans/${V}/final/zip/
EXTRACT_SUFX=		.zip

MODULES=		java
MODJAVA_VER=		1.7+

RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/netbeans

NB=			${PREFIX}/netbeans

do-install:
	${INSTALL_DATA_DIR} ${NB}
	@tar -czf - -C ${WRKDIR}/netbeans . | tar xzf - -C ${NB}
	@rm -rf ${NB}/profiler3
	@find ${NB} -name "*.dll" -o -name "*.exe" -o -name "*.cmd" \
		-o -name "*.bat" -o -name "*.orig" | xargs rm
	@${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} -c \
		${FILESDIR}/netbeans \
		${PREFIX}/bin/netbeans
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
		${FILESDIR}/netbeans.desktop \
		${PREFIX}/share/applications/netbeans.desktop

.include <bsd.port.mk>
