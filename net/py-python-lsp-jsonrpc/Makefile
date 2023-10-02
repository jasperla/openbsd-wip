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

RUN_DEPENDS =		devel/py-ujson${MODPY_FLAVOR}>=3.0.0

# TODO - Install requirements for tests
NO_TEST =		Yes

.include <bsd.port.mk>
