COMMENT =		python krb5 API interface

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		krb5-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/jborean93/pykrb5

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =		security/heimdal,-libs

MAKE_ENV =		KRB5_KRB5CONFIG=${LOCALBASE}/heimdal/bin/krb5-config

# required missed k5test
NO_TEST =		Yes

.include <bsd.port.mk>
