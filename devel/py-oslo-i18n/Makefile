# $OpenBSD$

COMMENT =		Oslo i18n library

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		oslo.i18n-${MODPY_EGG_VERSION}
PKGNAME =		py-oslo-i18n-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/oslo.i18n
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-pbr \
			devel/py-babel \
			devel/py-six

BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
