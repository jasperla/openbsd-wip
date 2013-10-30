# $OpenBSD: Makefile,v 1.45 2013/03/11 11:44:50 espie Exp $

COMMENT =	cli to phabricator

COMMIT_ID =     9310df9615402aea3bdc07971096a3296ba5dae2
DUMMY_VER =	0.20131107
DISTNAME =	arcanist-${DUMMY_VER}
DISTFILES = 	arcanist-${DUMMY_VER}{${COMMIT_ID}.tar.gz}
CATEGORIES =	www devel

HOMEPAGE =	http://phabricator.org/
MAINTAINER =	Gabriel Guzman <gabe@lifewaza.com>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://github.com/facebook/arcanist/archive/

MODULES =	lang/php

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/arcanist
WRKDIST  =      ${WRKDIR}/arcanist-${COMMIT_ID}/

SUBST_VARS =	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/arcanist
	cd ${WRKSRC} && pax -rw * ${PREFIX}/arcanist

.include <bsd.port.mk>
