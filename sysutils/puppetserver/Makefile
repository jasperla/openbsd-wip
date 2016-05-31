# $OpenBSD$

COMMENT =		server automation framework and application

DISTNAME =		puppetserver-2.4.0
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/puppetlabs/puppet-server

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://downloads.puppetlabs.com/puppet/

MODULES =		java \
			lang/ruby
MODJAVA_VER =		1.8+

RUN_DEPENDS =		java/javaPathHelper \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

SHAREDIR =		${PREFIX}/share/puppetserver/
EXDIR =			${PREFIX}/share/examples/puppetserver/

do-configure:
	${SUBST_CMD} ${WRKSRC}/ext/config/conf.d/puppetserver.conf \
		${WRKSRC}/ext/bin/puppetserver
#	${SUBST_CMD} -c ${FILESDIR}/os-settings.conf ${WRKDIR}/os-settings.conf

do-install:
	${INSTALL_DATA_DIR} ${SHAREDIR}/cli/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/puppetserver/conf.d/
	${INSTALL_DATA} ${WRKSRC}/puppet-server-release.jar ${SHAREDIR}
	${INSTALL_DATA} ${WRKSRC}/ext/config/conf.d/*.conf ${EXDIR}/conf.d/
#	${INSTALL_DATA} ${WRKDIR}/os-settings.conf  ${EXDIR}/conf.d/
	${INSTALL_DATA} ${WRKSRC}/ext/config/bootstrap.cfg ${EXDIR}
	${INSTALL_DATA} ${WRKSRC}/ext/config/logback.xml ${EXDIR}
#	${INSTALL_DATA} ${WRKSRC}/ext/cli/puppetserver-env ${SHAREDIR}/cli/
	${INSTALL_SCRIPT} ${WRKSRC}/ext/bin/puppetserver ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/ext/cli/* ${SHAREDIR}/cli/apps/

.include <bsd.port.mk>
