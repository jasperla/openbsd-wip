# $OpenBSD$

COMMENT =		Python deprecation patterns and strategies

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		debtcollector-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/debtcollector
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-pbr \
			devel/py-babel \
			devel/py-six \
			devel/py-wrapt

BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
