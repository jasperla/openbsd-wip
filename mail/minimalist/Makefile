# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =	minimalist mailing list manager written in perl

CATEGORIES =	mail

V =		3.1
DISTNAME =	minimalist-${V}
PKGNAME =	minimalist-${V}

MASTER_SITES =	https://github.com/madroach/minimalist/tarball/v3.1/
WRKDIST =	${WRKDIR}/madroach-minimalist-eeaaef6

HOMEPAGE =	https://github.com/madroach/minimalist

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

SEPARATE_BUILD =	Yes

NO_BUILD =		Yes
NO_REGRESS =		Yes

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


.include <bsd.port.mk>
