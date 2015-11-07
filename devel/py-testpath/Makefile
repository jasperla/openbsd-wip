# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		test utilities working with files and commands

MODPY_EGG_VERSION =	0.2
DISTNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-testpath-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jupyter/testpath

GH_ACCOUNT =		jupyter
GH_PROJECT =		testpath
GH_TAGNAME =		${MODPY_EGG_VERSION}

BUILD_DEPENDS =		textproc/sphinx
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-nose
RUN_DEPENDS +=		devel/py-pathlib

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
USE_GMAKE =		Yes

WRKSRC = ${WRKDIR}/testpath-${MODPY_EGG_VERSION}

# Does not use any setup.py based build system
do-build:
	${MODPY_BIN} -m compileall ${WRKBUILD}/testpath/
	cd ${WRKBUILD}/doc && env PYTHONPATH=.. ${GMAKE} html

PREFIX_SITE = ${PREFIX}/lib/python${MODPY_VERSION}/site-packages
DOCDIR = ${PREFIX}/share/doc/py-testpath
do-install:
	${INSTALL_DATA_DIR} ${PREFIX_SITE}
	cp -r ${WRKBUILD}/testpath ${PREFIX_SITE}
	cp -r ${WRKBUILD}/doc/_build/html ${DOCDIR}
	rm ${DOCDIR}/.buildinfo
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests tests

.include <bsd.port.mk>
