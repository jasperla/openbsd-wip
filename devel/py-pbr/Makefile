# $OpenBSD$

COMMENT =		Python Build Reasonableness

MODPY_EGG_VERSION =	1.8.0
DISTNAME =		pbr-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack-dev/pbr
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

# Missing dependencies
NO_TEST =	Yes

.include <bsd.port.mk>
