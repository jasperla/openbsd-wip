# $OpenBSD$

COMMENT =	gitignore-aware wrapper for Unison

MODPY_EGG_VERSION =	1.0.1
DISTNAME = 	unison-gitignore-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =	https://github.com/lime-green/unison-gitignore/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-pathspec${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}


do-test:
	cd ${WRKSRC}/tests && PYTHONPATH=../src ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
