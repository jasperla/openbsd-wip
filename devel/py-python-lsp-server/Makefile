COMMENT =		Python implementation of the Language Server Protocol

MODPY_EGG_VERSION =	1.7.3
DISTNAME =		python-lsp-server-${MODPY_EGG_VERSION}
PKGNAME =		py-python-lsp-server-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-lsp/python-lsp-server

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-jedi${MODPY_FLAVOR} \
			devel/py-ujson${MODPY_FLAVOR} \
			textproc/py-docstring-to-markdown${MODPY_FLAVOR} \
			textproc/py-python-lsp-jsonrpc${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR} \
			devel/py-codestyle${MODPY_FLAVOR} \
			devel/py-rope${MODPY_FLAVOR} \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR} \
			devel/py-yapf${MODPY_FLAVOR} \
			devel/py-autopep8${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
