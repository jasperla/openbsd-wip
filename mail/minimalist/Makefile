# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =	minimalist mailing list manager written in perl

CATEGORIES =	mail

DATE =		20140221
HASH =		4a86ebd3214ec92a578d59a89eb61a9b1f427575
DISTNAME =	minimalist-${DATE}

DISTFILES =	${HASH}${EXTRACT_SUFX}
MASTER_SITES =	https://github.com/madroach/minimalist/archive/
WRKDIST =	${WRKDIR}/minimalist-${HASH}

HOMEPAGE =	https://github.com/madroach/minimalist

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

SEPARATE_BUILD =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*


do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/minimalist.pl ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/examples/minimalist/{translations,auth,lists,lists/minimalist-example}/
	${INSTALL_DATA} \
		${WRKDIST}/translations/* \
		${PREFIX}/share/examples/minimalist/translations/
	${INSTALL_DATA} \
		${WRKDIST}/lists/minimalist-example/* \
		${PREFIX}/share/examples/minimalist/lists/minimalist-example/
	${INSTALL_DATA} \
		${WRKDIST}/minimalist.conf \
		${PREFIX}/share/examples/minimalist/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minimalist/
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/minimalist/
	${INSTALL_DATA} ${WRKDIST}/CHANGES ${PREFIX}/share/doc/minimalist/



.include <bsd.port.mk>
