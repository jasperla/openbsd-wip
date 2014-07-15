# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		filesystem abstraction layer for Python

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		fs-${MODPY_EGG_VERSION}
PKGNAME =		py-fs-${MODPY_EGG_VERSION}

CATEGORIES =		devel net

HOMEPAGE =		http://pyfilesystem.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=f/fs/}

MODPY_SETUPTOOLS =	Yes
MODULES =		lang/python
TEST_DEPENDS =		devel/py-nose \
			net/py-ftpdlib \
			www/py-mako
RUN_DEPENDS =		devel/py-six
BUILD_DEPENDS =		${RUN_DEPENDS}

# Some tests fail:
# https://code.google.com/p/pyfilesystem/issues/detail?id=179
do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/nosetests -v

.include <bsd.port.mk>
