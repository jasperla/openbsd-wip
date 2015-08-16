# $OpenBSD: Makefile,v 1.34 2015/07/23 12:46:01 jasper Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION =	4.0.0
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

MODULES=		lang/python

# XXX check all this
RUN_DEPENDS +=		graphics/py-matplotlib>=1.2.0 \
			textproc/py-pygments \
			math/graphviz \
			devel/py-ipykernel
# Oddly enough, Ipython installs the test suite, so we can run it right out
# of ${LOCALBASE}. Note that if you have pdb++ installed, tests will fail.
TEST_DEPENDS =		${FULLPKGNAME}:devel/ipython \
			devel/py-nose \
			devel/py-mock
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx \
			textproc/py-numpydoc \
			devel/desktop-file-utils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

pre-patch:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

# Build some HTML docs. OK to ignore python and systrace warnings.
MAKE_ENV +=	PYTHONPATH=${WRKSRC}
post-build:
	cd ${WRKSRC}/docs && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
APPS_DIR = 	${PREFIX}/share/applications/
DOCS_DIR =	${PREFIX}/share/doc/ipython/
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA_DIR} ${APPS_DIR}
	${INSTALL_DATA_DIR} ${DOCS_DIR}

	cp -r ${WRKSRC}/examples/* ${EXAMPLES_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLES_DIR}/*
	mv ${EXAMPLES_DIR}/IPython\ Kernel/*.desktop ${APPS_DIR}

	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}

pre-build:
	${SUBST_CMD} ${WRKBUILD}/IPython/core/tests/test_interactiveshell.py

do-test:
	PYTHONIOENCODING='utf-8' ${LOCALBASE}/bin/iptest

# A test failure, reported upstream:
# https://github.com/ipython/ipython/issues/5217
# To repro:
# python2.7 /usr/local/lib/python2.7/site-packages/IPython/testing/iptest.py -vvs IPython.core

# Note also that tests will fail if pdb++ is installed! Bug raised:
# https://github.com/ipython/ipython/issues/6004

.include <bsd.port.mk>
