# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.4
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/numpydoc/}

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test
do-test:
	cd ${WRKSRC} && py.test -v

.include <bsd.port.mk>
