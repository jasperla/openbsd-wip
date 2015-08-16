# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	4.0.3
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-traitlets
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test \
			devel/py-mock \
			${FULLPKGNAME}:${FULLPKGPATH}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

# XXX some failing tests. Try with ipython installed?
do-test:
	py.test ${MODPY_SITEPKG}/jupyter_core/tests/

.include <bsd.port.mk>
