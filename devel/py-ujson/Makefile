COMMENT =		ultra fast JSON decoder and encoder with Python bindings

MODPY_EGG_VERSION =	5.7.0
DISTNAME =		ujson-${MODPY_EGG_VERSION}
PKGNAME =		py-ujson-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ultrajson/ultrajson

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
WANTLIB +=		${COMPILER_LIBCXX} m

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
