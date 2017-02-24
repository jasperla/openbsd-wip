# $OpenBSD$

COMMENT =		IPython HTML widgets for Jupyter

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		widgetsnbextension-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		www/jupyter-notebook${MODPY_FLAVOR}>=4.2.0

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
