# $OpenBSD: Makefile,v 1.11 2013/07/01 10:39:18 sthen Exp $

COMMENT =		common base representation of Python source code

MODPY_EGG_VERSION =	1.3.6
DISTNAME =		astroid-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://www.astroid.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-logilab-common${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

# Note: This is not pytest as in devel/py-test.
do-test: fake
	@cd ${WRKSRC}/astroid/tests && \
	    env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} /usr/local/bin/pytest${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
