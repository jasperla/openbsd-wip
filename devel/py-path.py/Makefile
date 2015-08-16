# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		os.path wrapper for Python

MODPY_EGG_VERSION =	7.6
DISTNAME =		path.py-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/path.py

TEST_DEPENDS +=		devel/py-test \
			${FULLPKGNAME}:${FULLPKGPATH}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	${LOCALBASE}/bin/py.test ${MODPY_LIBDIR}/site-packages/test_path.py

.include <bsd.port.mk>
