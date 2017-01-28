# $OpenBSD: Makefile,v 1.29 2016/03/18 23:12:16 naddy Exp $

COMMENT=		NetBeans Java IDE

V=			8.2
DISTNAME=		netbeans-${V}
CATEGORIES=		devel

HOMEPAGE=		https://www.netbeans.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org> \
			Rafael Sadowski <rafael@sizeofvoid.org>

# CDDL and GPLv2 dual-licensed
# See:
# https://netbeans.org/about/legal/index.html
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.netbeans.org/netbeans/${V}/final/zip/
EXTRACT_SUFX=		-201609300101.zip

MODULES=		java
MODJAVA_VER=		1.8+

RUN_DEPENDS=		java/javaPathHelper \
			devel/desktop-file-utils

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/netbeans

NB=			${PREFIX}/netbeans

do-install:
	${INSTALL_DATA_DIR} ${NB}
	@tar -czf - -C ${WRKDIR}/netbeans . | tar xzf - -C ${NB}
	@rm -rf ${NB}/profiler ${NB}/{ide,cnd,dlight}/bin \
		${NB}/platform/modules/lib/{i386,amd64,x86}
	@find ${NB} -name "*.dll" -o -name "*.exe" -o -name "*.cmd" \
		-o -name "*.bat" -o -name ".lastModified" \
		-o -name "*.orig" | xargs rm
	@${SUBST_PROGRAM} ${FILESDIR}/netbeans ${PREFIX}/bin/netbeans
	@${INSTALL_DATA_DIR} ${PREFIX}/netbeans/cnd/bin
	@${INSTALL_SCRIPT} ${WRKDIR}/netbeans/cnd/bin/dorun.sh ${NB}/cnd/bin/
	@${INSTALL_DATA_DIR} ${PREFIX}/netbeans/ide/bin/nativeexecution
	@${INSTALL_SCRIPT} ${WRKDIR}/netbeans/ide/bin/nativeexecution/hostinfo.sh \
	${NB}/ide/bin/nativeexecution/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${FILESDIR}/netbeans.desktop \
		${PREFIX}/share/applications/netbeans.desktop

.include <bsd.port.mk>
