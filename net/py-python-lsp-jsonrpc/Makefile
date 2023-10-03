COMMENT =		Python JSON RPC Server

MODPY_EGG_VERSION =	1.1.2
DISTNAME =		python-lsp-jsonrpc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/python-lsp/python-lsp-jsonrpc

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		textproc/py-ujson${MODPY_FLAVOR}>=3.0.0

# Test test_writer_bad_message fails with ujson
# See https://github.com/python-lsp/python-lsp-jsonrpc/issues/6
TEST_DEPENDS =		devel/pylint${MODPY_FLAVOR} \
			devel/py-codestyle${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
