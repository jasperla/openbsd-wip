# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org

# XXX jsonschema
RUN_DEPENDS =		devel/py-ipython_genutils \
			devel/py-traitlets \
			devel/jupyter_core

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
