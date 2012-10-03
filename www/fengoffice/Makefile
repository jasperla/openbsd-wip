COMMENT =	web-based collaboration platform and groupware

DISTNAME =	fengoffice_2.2.0beta
PKGNAME =	${DISTNAME:S/_/-/}
CATEGORIES =	www

HOMEPAGE =	http://www.fengoffice.com/web/opensource/

# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opengoo/}

EXTRACT_SUFX =	.zip

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-gd

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/fengoffice
WRKDIST =	${WRKDIR}/fengoffice

SUBST_VARS =	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/fengoffice
	cd ${WRKSRC} && pax -rw * ${PREFIX}/fengoffice

.include <bsd.port.mk>
