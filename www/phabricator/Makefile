# $OpenBSD: Makefile,v 1.45 2013/03/11 11:44:50 espie Exp $

COMMENT =	code review, repository browser, bug tracker and wiki

COMMIT_ID =     f68d67530aef062310252264e10a9666144c2637
DUMMY_VER =	0.20131107
DISTNAME =	phabricator-${DUMMY_VER}
DISTFILES = 	phabricator-${DUMMY_VER}{${COMMIT_ID}.tar.gz}
CATEGORIES =	www devel

HOMEPAGE =	http://phabricator.org/
MAINTAINER =	Gabriel Guzman <gabe@lifewaza.com>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://github.com/facebook/phabricator/archive/

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-fastcgi \
		lang/php/${MODPHP_VERSION},-pcntl \
		lang/php/${MODPHP_VERSION},-fpm \
		www/arcanist \
		www/libphutil

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/phabricator
WRKDIST  =      ${WRKDIR}/phabricator-${COMMIT_ID}/

SUBST_VARS =	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/phabricator
	cd ${WRKSRC} && pax -rw * ${PREFIX}/phabricator

.include <bsd.port.mk>
