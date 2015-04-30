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
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

# These are optional runtime dependencies that should be around for
# building the docs and running the tests.
OPTIONAL_DEPENDS = 	graphics/py-matplotlib \
			net/py-boto \
			x11/py-qt4 \
			www/py-httplib2 \
			www/py-beautifulsoup4 \
			devel/py-html5lib \
			devel/ipython

BUILD_DEPENDS =		${RUN_DEPENDS} \
			${OPTIONAL_DEPENDS}

RUN_DEPENDS =		devel/py-tz \
			devel/py-dateutil \
			math/py-numpy

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			${FULLPKGNAME}:math/py-pandas \
			${OPTIONAL_DEPENDS}

do-test:
	${LOCALBASE}/bin/nosetests pandas -v

# http://pandas.pydata.org/pandas-docs/stable/install.html
#
# "Note that you will not be able to import pandas if you open an
# interpreter in the source directory unless you build the C extensions in
# place"
#
# Building docs will fail if we don't do this.
post-build:
	cd ${WRKBUILD} && ${MODPY_CMD} build_ext --inplace
	cd ${WRKBUILD}/doc && ${MODPY_BIN} make.py

post-install:
	cp -r ${WRKBUILD}/doc/build/html ${PREFIX}/share/doc/py-pandas
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-pandas


.include <bsd.port.mk>
