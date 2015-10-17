# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		test utilities for code working with files and commands

# XXX use GH_*
MODPY_EGG_VERSION =	0.2
DISTNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-testpath

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jupyter/testpath
MASTER_SITES =		https://github.com/jupyter/testpath/archive/

#TEST_DEPENDS +=		devel/py-nose
#BUILD_DEPENDS =		lang/cython

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
#MODPY_SETUPTOOLS =	Yes


WRKSRC = ${WRKDIR}/testpath-${MODPY_EGG_VERSION}

# Does not use any setup.py based build system
do-build:
	${MODPY_BIN} -m compileall ${WRKBUILD}/testpath/

PREFIX_SITE = ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
do-install:
	${INSTALL_DATA_DIR} ${PREFIX_SITE}
	cp -r ${WRKBUILD}/testpath ${PREFIX_SITE}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests tests

.include <bsd.port.mk>
