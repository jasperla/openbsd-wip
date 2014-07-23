# $OpenBSD$

MODPY_EGG_VERSION =	3.4.0.3
COMMENT =	backport of functools.singledispatch to Python 2.6-3.3
DISTNAME =	singledispatch-${MODPY_EGG_VERSION}
PKGNAME =	py-singledispatch-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://livestreamer.tanuki.se/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=s/singledispatch/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-six

.include <bsd.port.mk>
