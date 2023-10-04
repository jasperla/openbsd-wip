COMMENT =		build backend used by PDM (Python Dependency Manager)

MODPY_EGG_VERSION =	2.1.6
DISTNAME =		pdm_backend-${MODPY_EGG_VERSION}
PKGNAME =		py-pdm-backend-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# htps://github.com/pdm-project/pdm-backend
HOMEPAGE =		https://pdm-backend.fming.dev/

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		Yes

# Tests fail with 2 errors because of PDM module not available
TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-editables${MODPY_FLAVOR}

.include <bsd.port.mk>
