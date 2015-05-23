# $OpenBSD$

COMMENT =		Oslo Utility library

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		oslo.utils-${MODPY_EGG_VERSION}
PKGNAME =		py-oslo-utils-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/oslo.utils
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-pbr \
			devel/py-babel \
			devel/py-six \
			textproc/py-iso8601 \
			devel/py-oslo-i18n \
			net/py-netaddr \
			net/py-netifaces \
			devel/py-debtcollector

BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
