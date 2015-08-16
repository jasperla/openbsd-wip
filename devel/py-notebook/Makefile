# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		web-based notebook for interactive computing

MODPY_EGG_VERSION =	4.0.2
DISTNAME =		notebook-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

# XXX nbformat
# XXX nbconvert
RUN_DEPENDS =		www/py-jinja2 \
			net/py-zmq \
			www/py-tornado>=4.2 \
			devel/py-ipython_genutils \
			devel/py-traitlets \
			devel/py-jupyter_core \
			devel/py-jupyter_client \
			devel/py-ipykernel
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/sphinx
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/py-mock \
			www/py-requests

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
