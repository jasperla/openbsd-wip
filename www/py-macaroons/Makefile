# $OpenBSD$

COMMENT =		macaroon library for Python

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		pymacaroons-${MODPY_EGG_VERSION}
PKGNAME =		py-macaroons-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/ecordell/pymacaroons

MAINTAINER =		XXX XXX <xxx@xxx.xxx>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		security/py-libnacl${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS=python3
FLAVOR?=

.include <bsd.port.mk>
