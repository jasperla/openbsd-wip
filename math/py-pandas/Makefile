# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		high-performance, easy-to-use data analysis for Python

MODPY_EGG_VERSION =	0.16.0
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-pandas-${MODPY_EGG_VERSION}

CATEGORIES =		math graphics

HOMEPAGE =		http://pandas.pydata.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m pthread python2.7 stdc++

MODPY_PI =		Yes

MODULES =		lang/python
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-tz \
			devel/py-dateutil \
			math/py-numpy
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			${FULLPKGNAME}:math/py-pandas

do-test:
	${LOCALBASE}/bin/nosetests pandas

.include <bsd.port.mk>
