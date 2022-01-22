# $OpenBSD$

COMMENT =		a least recently used (LRU) cache for Python
MODPY_EGG_VERSION =	1.2.0

DISTNAME =		pylru-${MODPY_EGG_VERSION}
PKGNAME =		py-lru-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jlhutch/pylru
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR=python3
FLAVORS=python3

do-test:
	cd ${MODPY_TEST_DIR} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} test.py

.include <bsd.port.mk>
