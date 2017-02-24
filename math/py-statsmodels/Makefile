# $OpenBSD$

COMMENT =		statistical computations and models for use with SciPy

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		statsmodels-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		${MODPY_WANTLIB} m pthread

MODULES =		lang/python

BUILD_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			math/py-patsy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
