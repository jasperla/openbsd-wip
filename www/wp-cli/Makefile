# $OpenBSD: Makefile,v 1.51 2016/11/04 11:35:20 sthen Exp $

COMMENT =	command line tool for wordpress

GH_ACCOUNT =	wp-cli
GH_PROJECT =	wp-cli
GH_TAGNAME =	v1.2.1

EXTRACT_ONLY =
EXTRACT_SUFX =	.phar

MASTER_SITES =	https://github.com/wp-cli/wp-cli/releases/download/${GH_TAGNAME}/

CATEGORIES =	www
HOMEPAGE =	http://wp-cli.org/

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION}

NO_BUILD =	Yes

SUBST_VARS +=	LOCALBASE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	cp ${FULLDISTDIR}/${DISTNAME}.phar ${PREFIX}/bin/wp-cli.phar
	${INSTALL_SCRIPT} ${FILESDIR}/wp ${PREFIX}/bin/wp
	${SUBST_CMD} ${PREFIX}/bin/wp

.include <bsd.port.mk>
