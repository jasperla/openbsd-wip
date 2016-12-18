# $OpenBSD$

COMMENT =		statistical and novel interactive HTML plots for Python

MODPY_EGG_VERSION =	0.12.3
DISTNAME =		bokeh-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics

HOMEPAGE =		http://bokeh.pydata.org/en/latest/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures
.endif

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/bokeh ${PREFIX}/bin/bokeh${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
