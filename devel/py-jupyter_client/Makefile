# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

RUN_DEPENDS +=		devel/py-jupyter_core \
			devel/py-traitlets \
			net/py-zmq
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/py-ipykernel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests jupyter_client

.include <bsd.port.mk>
