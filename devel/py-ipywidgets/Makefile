# $OpenBSD$

COMMENT =		IPython HTML widgets for Jupyter

MODPY_EGG_VERSION =	5.2.2
DISTNAME =		ipywidgets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

RUN_DEPENDS =		devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-widgetsnbextension${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
