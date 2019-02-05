# $OpenBSD$

COMMENT =		requests-like API built on top of twisted.web's Agent

MODPY_EGG_VERSION =	18.6.0
DISTNAME =		treq-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/twisted/treq

# MIT/X
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-incremental${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}>=2.1.0

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
