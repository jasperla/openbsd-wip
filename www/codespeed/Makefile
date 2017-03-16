# $OpenBSD:  $

COMMENT =	web app to monitor and analyze the performance of your code

VERSION =	0.11.0
DISTNAME =	${VERSION}
PKGNAME =	codespeed-${VERSION}
CATEGORIES =	www

HOMEPAGE =	https://github.com/tobami/codespeed/
MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>	

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/tobami/codespeed/archive/

MODULES =	lang/python

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/py-south \
		devel/py-isodate \
		www/py-django

NO_BUILD =	Yes

WRKSRC =	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/codespeed
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/codespeed/tools
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/codespeed/tools/pypy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/codespeed/documentation
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,CHANGELOG,README.md,COPYING} ${PREFIX}/share/doc/codespeed
	${INSTALL_DATA} ${WRKSRC}/documentation/* ${PREFIX}/share/doc/codespeed/documentation
	${INSTALL_DATA} ${WRKSRC}/tools/*.py ${PREFIX}/share/doc/codespeed/tools
	${INSTALL_DATA} ${WRKSRC}/tools/pypy/* ${PREFIX}/share/doc/codespeed/tools/pypy

.include <bsd.port.mk>
