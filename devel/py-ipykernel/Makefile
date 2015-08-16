# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	4.0.3
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS +=		devel/py-jupyter_client
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

# XXX not run tests yet
do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
