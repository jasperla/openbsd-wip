COMMENT =		CORS support for aiohttp

MODPY_DISTV=		0.8.1
DISTNAME=		aiohttp_cors-${MODPY_DISTV}
MODPY_PI_DIR=		a/aiohttp-cors
PKGNAME=		py-aiohttp-cors-${MODPY_DISTV}

CATEGORIES=		www

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes
MODPY_PYTEST=		Yes

MODPY_PYTEST_ARGS=	--asyncio-mode=auto \
			--ignore tests/integration/test_real_browser.py

RUN_DEPENDS=		www/py-aiohttp

TEST_DEPENDS=		devel/py-test-asyncio \
			devel/py-test-aiohttp

.include <bsd.port.mk>
