# $OpenBSD$

COMMENT =		convenient utils not included in the standard Python install

MODPY_EGG_VERSION =	2.3.0
DISTNAME =		python-utils-${MODPY_EGG_VERSION}
PKGNAME =		py-python_utils-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
