# $OpenBSD$

COMMENT =		python implementation of SAML version 2

MODPY_EGG_VERSION =	4.6.4
DISTNAME =		pysaml2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://idpy.org

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}>=1.4 \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}>=1.0.0

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
