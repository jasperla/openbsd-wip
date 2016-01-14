# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		high-performance, easy-to-use data analysis for Python

MODPY_EGG_VERSION =	0.17.1
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-pandas-${MODPY_EGG_VERSION}

CATEGORIES =		math graphics

HOMEPAGE =		http://pandas.pydata.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} stdc++

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

# These are optional runtime dependencies that should be around for
# building the docs and running the tests.
OPTIONAL_DEPENDS = 	devel/ipython \
			devel/py-html5lib \
			graphics/py-matplotlib \
			math/py-scipy \
			net/py-boto \
			www/py-beautifulsoup4 \
			www/py-httplib2 \
			x11/xclip

RUN_DEPENDS =		devel/py-tz \
			devel/py-dateutil \
			math/py-numpy

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			${OPTIONAL_DEPENDS}
#TEST_IS_INTERACTIVE =	X11

# XXX for build doc need X

# http://pandas.pydata.org/pandas-docs/stable/install.html
#
# "Note that you will not be able to import pandas if you open an
# interpreter in the source directory unless you build the C extensions in
# place"
#
# Building docs will fail if we don't do this.
#post-build:
#	cd ${WRKBUILD} && ${MODPY_CMD} build_ext --inplace
#	cd ${WRKBUILD}/doc && ${MODPY_BIN} make.py

#post-install:
#	cp -r ${WRKBUILD}/doc/build/html ${PREFIX}/share/doc/py-pandas
#	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-pandas

.include <bsd.port.mk>
