# $OpenBSD$

COMMENT =		Python library to provide visual progress

MODPY_EGG_VERSION =	3.37.1
DISTNAME =		progressbar2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

MODPY_SETUPTOOLS = 	Yes
MODPY_PI =		Yes
RUN_DEPENDS =		devel/py-python_utils${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
