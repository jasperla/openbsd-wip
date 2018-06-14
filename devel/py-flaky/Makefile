# $OpenBSD: Makefile,v 1.11 2017/01/03 19:19:48 landry Exp $

COMMENT =	plugin that automatically reruns flaky tests

MODPY_EGG_VERSION =	3.4.0
DISTNAME =		flaky-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/box/flaky

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS +=		devel/py-tox${MODPY_FLAVOR}

.include <bsd.port.mk>
