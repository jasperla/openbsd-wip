# $OpenBSD$

COMMENT =		fully automated tests

VERSION =		0.15.1
DISTNAME =		${VERSION}-master
PKGNAME =		autotest-${VERSION}

CATEGORIES =		devel sysutils

HOMEPAGE =		http://autotest.github.io

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>	

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/autotest/autotest/archive/

RUN_DEPENDS =		www/py-django

BUILD_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_2}

MODULES =		lang/python

NO_BUILD =		Yes
NO_TEST =		Yes

WRKSRC =		${WRKDIR}/${PKGNAME}-master/

.include <bsd.port.mk>
