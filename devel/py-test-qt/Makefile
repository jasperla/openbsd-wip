# $OpenBSD: Makefile,v 1.8 2017/04/22 18:02:15 shadchin Exp $

COMMENT =		pytest support for PyQt and PySide applications

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		pytest-qt-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-qt

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR} \
			devel/py-test-qt${MODPY_FLAVOR}
do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
