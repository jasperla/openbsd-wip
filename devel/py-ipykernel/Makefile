# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	4.0.3
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS +=		devel/py-jupyter_client \
			devel/py-traitlets
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			${RUN_DEPENDS} \
			devel/py-nose \
			devel/ipython>=4.0.0 \
			devel/py-mock

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

# XXX: one failing test:
# No output from 'python2.7 -m IPython kernel --help-all'
# Expects output.
do-test:
	${LOCALBASE}/bin/nosetests ${MODPY_SITEPKG}/ipykernel

.include <bsd.port.mk>
