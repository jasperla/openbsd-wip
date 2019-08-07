# $OpenBSD$

COMMENT =	set of python modules for machine learning and data mining

MODPY_EGG_VERSION =	0.20.3
DISTNAME =		scikit-learn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		http://scikit-learn.org

MAINTAINER =		Paul Irofti <pirofti@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		math/py-numpy${MODPY_FLAVOR}>=1.9.0
RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}>=1.9.0 \
			math/py-scipy${MODPY_FLAVOR}>=0.16.0 \
			sysutils/py-joblib>=0.11

MAKE_ENV +=		SKLEARN_NO_OPENMP=1


.include <bsd.port.mk>
