# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		converting Jupyter Notebooks

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		nbconvert-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

# XXX nbformat
# XXX mistune
RUN_DEPENDS =		www/py-jinja2 \
			textproc/py-pygments \
			devel/py-traitlets \
			devel/jupyter_core

# XXX
#TEST_DEPENDS =		${RUN_DEPENDS} \
#			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

#do-test:
#	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
