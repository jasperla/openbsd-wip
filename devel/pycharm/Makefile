# $OpenBSD: Makefile,v 1.29 2016/01/20 21:49:47 zhuk Exp $

SHARED_ONLY=		Yes

COMMENT=		PyCharm Python IDE

V=			5.0.4
DISTNAME=		pycharm-community-${V}
PKGNAME=		${DISTNAME:C/-community//}
CATEGORIES=		devel

HOMEPAGE=		https://www.jetbrains.com/pycharm/
MAINTAINER=		# Markus Bergkvist?

# Apache v2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.jetbrains.com/pycharm/

MODULES=		java
MODJAVA_VER=		1.7+

BUILD_DEPENDS=		${MODJAVA_RUN_DEPENDS}

# no dependencies on exact Python version
RUN_DEPENDS=		devel/desktop-file-utils

NO_TEST=		Yes

SUBST_VARS+=		JAVA_HOME

PYCHARM=		${PREFIX}/pycharm

# If NO_BUILD is set, JAVA_HOME doesn't get defined. So do
# a no-op for do-build.
do-build:
	@true

do-install:
	${INSTALL_DATA_DIR} ${PYCHARM}
	tar -czf - -C ${WRKDIST} . | tar xzf - -C ${PYCHARM}
	@${SUBST_PROGRAM} ${FILESDIR}/pycharm ${PREFIX}/bin/pycharm
	chmod ${BINMODE} ${PREFIX}/bin/pycharm
	${INSTALL_MAN} ${FILESDIR}/pycharm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${SUBST_DATA} ${FILESDIR}/pycharm.desktop \
		${PREFIX}/share/applications/pycharm.desktop

.include <bsd.port.mk>
