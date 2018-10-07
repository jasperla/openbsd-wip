# $OpenBSD$

COMMENT =		canonical JSON

MODPY_EGG_VERSION =	1.1.3
DISTNAME =		canonicaljson-${MODPY_EGG_VERSION}
PKGNAME =		py-canonicaljson-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/matrix-org/python-canonicaljson

MAINTAINER =		XXX XXX <xxx@xxx.xxx>

# Apache-2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-frozendict${MODPY_FLAVOR} \
			devel/py-simplejson${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
