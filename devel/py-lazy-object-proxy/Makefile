# $OpenBSD$

COMMENT =		fast and thorough lazy object proxy

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		lazy-object-proxy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://python-lazy-object-proxy.readthedocs.org

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest --ignore=src

.include <bsd.port.mk>
