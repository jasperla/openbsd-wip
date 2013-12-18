# $OpenBSD:  $

COMMENT =	web app to monitor and analyze the performance of your code

VERSION =	0.9.1
DISTNAME =	${VERSION}
PKGNAME =	codespeed-${VERSION}
CATEGORIES =	www

HOMEPAGE =	https://github.com/tobami/codespeed/
MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>	

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/tobami/codespeed/archive/

MODULES =	lang/python

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    www/py-django

NO_BUILD =	Yes
NO_TEST =	Yes

WRKSRC =	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
