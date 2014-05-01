# $OpenBSD$

COMMENT =		command line client for asciinema.org service

VERSION =		0.9.8
DISTNAME =		v${VERSION}
PKGNAME =		asciinema-${VERSION}

CATEGORIES =		misc sysutils

HOMEPAGE =		http://asciinema.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/sickill/asciinema/archive/

MODULES =		lang/python

NO_BUILD =		Yes
#NO_TEST =		Yes

RUN_DEPENDS =		www/py-requests

MODPY_SETUPTOOLS = 	Yes

WRKSRC =		${WRKDIR}/${PKGNAME}/

.include <bsd.port.mk>
