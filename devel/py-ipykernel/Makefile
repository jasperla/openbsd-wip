# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	4.0.3
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS +=		devel/py-jupyter_client \
			devel/py-traitlets \
			devel/ipython>=4.0.0
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/py-mock

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC}; LC_CTYPE=en_US.UTF-8 ${LOCALBASE}/bin/nosetests ipykernel

.include <bsd.port.mk>
