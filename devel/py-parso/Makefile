# $OpenBSD: Makefile,v 1.4 2017/04/22 21:57:42 shadchin Exp $

COMMENT =		python parser

MODPY_EGG_VERSION =	0.3.0
DISTNAME =		parso-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/davidhalter/parso

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest ${TEST_ARGS} parso test

.include <bsd.port.mk>
