# $OpenBSD$

COMMENT =		sphinx source parser for ipynb files

MODPY_EGG_VERSION =	0.3.3
DISTNAME =		nbsphinx-${MODPY_EGG_VERSION}
PKGNAME =		py-nbsphinx-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		http://nbsphinx.readthedocs.io

# MIT 
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS +=		www/py-jinja2${MODPY_FLAVOR} \
			devel/py-nbconvert${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}

.include <bsd.port.mk>
