# $OpenBSD$

COMMENT =		manage dynamic plugins for Python applications

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		stevedore-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack/stevedore
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-pbr \
				devel/py-six

#NO_TEST =	Yes

.include <bsd.port.mk>
