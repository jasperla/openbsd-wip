# $OpenBSD$

COMMENT =		Oslo Configuration API

MODPY_EGG_VERSION =	1.11.0
DISTNAME =		oslo.config-${MODPY_EGG_VERSION}
PKGNAME =		py-oslo-config-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/oslo.config
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-pbr \
				devel/py-six \
				net/py-netaddr \
				devel/py-stevedore

BUILD_DEPENDS =	${RUN_DEPENDS}

#NO_TEST =	Yes

.include <bsd.port.mk>
