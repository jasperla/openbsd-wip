# $OpenBSD$

COMMENT =		view and edit a binary stream field by field
MODPY_EGG_VERSION =	3.1.2

DISTNAME =		hachoir-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel sysutils
HOMEPAGE =		http://hachoir.readthedocs.io/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR=python3
FLAVORS=python3

TEST_DEPENDS =		devel/py-tox${MODPY_FLAVOR}

do-test:
	cd ${MODPY_TEST_DIR} && ${SETENV} ${ALL_TEST_ENV} ${LOCALBASE}/bin/tox

.include <bsd.port.mk>
