COMMENT =		resolving Swagger/OpenAPI 2.0 and 3.0.0 Parser

MODPY_EGG_VERSION =	23.6.21.0

DISTNAME =		prance-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RonnyPfannschmidt/prance

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

# Dependencies
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \

# tests need network access, and pypi artifact has missed
# tests/OpenAPI-Specification, so some test fails
NO_TEST =		Yes

.include <bsd.port.mk>
