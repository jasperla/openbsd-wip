# $OpenBSD$

COMMENT =		Bitcoin-compatible base58 implementation
MODPY_EGG_VERSION =	2.1.1

DISTNAME =		base58-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security
HOMEPAGE =		https://github.com/keis/base58
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVOR=python3
FLAVORS=python3

TEST_DEPENDS =		devel/flake8 \
			devel/py-hamcrest${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
