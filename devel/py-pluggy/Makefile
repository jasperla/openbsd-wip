# $OpenBSD$

COMMENT =		plugin and hook calling mechanisms for python

MODPY_EGG_VERSION =	0.3.1
DISTNAME =		pluggy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://pypi.python.org/pypi/pluggy
MODPY_PI =		Yes

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
