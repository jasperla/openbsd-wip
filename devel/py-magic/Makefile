# $OpenBSD$

MODPY_EGG_VERSION =	0.4.15
COMMENT =	file type identification using libmagic
DISTNAME =	python-magic-${MODPY_EGG_VERSION}
PKGNAME =	py-magic-${MODPY_EGG_VERSION}
CATEGORIES =	devel

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =	python3
FLAVOR ?=

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/libmagic

# Broken tests
NO_TEST =	Yes

.include <bsd.port.mk>
