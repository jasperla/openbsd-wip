# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		object-oriented filesystem paths

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		pathlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://pathlib.readthedocs.org/en/pep428/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
BUILD_DEPENDS =		textproc/sphinx

DOCDIR = ${PREFIX}/share/doc/py-pathlib

post-build:
	cd ${WRKBUILD}/docs && ${MAKE} html

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKBUILD}/docs/_build/html/* ${DOCDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCDIR}

# XXX
# https://bitbucket.org/pitrou/pathlib/issues/30/tests-do-not-run
NO_TEST = Yes

.include <bsd.port.mk>
