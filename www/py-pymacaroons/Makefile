# $OpenBSD$

COMMENT =		macaroon library for Python

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		pymacaroons-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/ecordell/pymacaroons

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}>=1.8.0 \
			security/py-PyNaCl${MODPY_FLAVOR}>=1.1.2,<2.0

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
