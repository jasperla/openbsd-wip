# $OpenBSD$

COMMENT =		implementation of time.monotonic

MODPY_EGG_VERSION =	0.3
DISTNAME =		monotonic-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pypi.python.org/pypi/monotonic
MODPY_PI =		Yes


# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

# Missing dependencies
NO_TEST =	Yes

.include <bsd.port.mk>
