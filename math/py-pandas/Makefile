# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		high-performance, easy-to-use data analysis for Python

MODPY_EGG_VERSION =	0.19.1
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-pandas-${MODPY_EGG_VERSION}

CATEGORIES =		math graphics

HOMEPAGE =		http://pandas.pydata.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m pthread ${MODPY_WANTLIB} stdc++

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

# These are optional runtime dependencies that should be around for
# building the docs and running the tests.
OPTIONAL_DEPENDS =	devel/py-html5lib${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-bottleneck${MODPY_FLAVOR} \
			math/py-numexpr${MODPY_FLAVOR} \
			net/py-boto${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			x11/xclip

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			${OPTIONAL_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/ipython
.endif

pre-test:
	@${MODPY_CMD} build_ext --inplace


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
#	cp -r ${WRKBUILD}/doc/build/html ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pandas
#	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pandas

.include <bsd.port.mk>
