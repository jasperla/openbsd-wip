# $OpenBSD: Makefile,v 1.8 2017/04/22 18:02:15 shadchin Exp $

COMMENT =		pytest plugin to abort hanging tests

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		pytest-timeout-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/pytest-dev/pytest-timeout/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR}
do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
