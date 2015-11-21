# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	4.0.6
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

RUN_DEPENDS =		devel/py-traitlets
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test \
			devel/py-mock \
			devel/ipython>=4.0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test jupyter_core

.include <bsd.port.mk>
