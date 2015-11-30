# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		converting Jupyter Notebooks

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		nbconvert-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

RUN_DEPENDS =		www/py-jinja2 \
			textproc/py-pygments \
			devel/py-traitlets \
			devel/py-jupyter_core \
			devel/py-nbformat \
			textproc/py-mistune \
			www/py-tornado>=4.2 \
			devel/py-jupyter_client \
			textproc/py-pygments
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			devel/py-ipykernel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC}; LC_CTYPE=en_US.UTF-8 PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/nosetests nbconvert

.include <bsd.port.mk>
