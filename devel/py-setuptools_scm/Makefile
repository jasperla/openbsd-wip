# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		package to manage your versions by scm tags

MODPY_EGG_VERSION =	1.7.0
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pypa/setuptools_scm/

TEST_DEPENDS =		devel/py-test \
			${FULLPKGNAME}:${FULLPKGPATH}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# Tests completely broken! XXX
do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test

.include <bsd.port.mk>
