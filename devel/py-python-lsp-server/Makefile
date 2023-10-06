COMMENT =		Python implementation of the Language Server Protocol

MODPY_EGG_VERSION =	1.8.1
DISTNAME =		python-lsp-server-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-lsp/python-lsp-server

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-docstring-to-markdown${MODPY_FLAVOR} \
			devel/py-jedi${MODPY_FLAVOR}>=0.17.2 \
			devel/py-pluggy${MODPY_FLAVOR}>=1.0.0 \
			net/py-python-lsp-jsonrpc${MODPY_FLAVOR}>=1.1.0 \
			textproc/py-ujson${MODPY_FLAVOR}>=3.0.0 \
			devel/autopep8>=2.0.4 \
			devel/py-mccabe${MODPY_FLAVOR}>=0.7.0 \
			devel/py-codestyle${MODPY_FLAVOR}>=2.11.0 \
			devel/pyflakes${MODPY_FLAVOR}>=3.1.0 \
			devel/py-rope${MODPY_FLAVOR}>=1.2.0 \
			devel/py-yapf${MODPY_FLAVOR}>=0.33.0 \
			textproc/py-whatthepatch${MODPY_FLAVOR}>=1.0.2

# TODO - Install requirements for tests
NO_TEST =		Yes

.include <bsd.port.mk>
