# $OpenBSD: Makefile,v 1.1.1.1 2015/12/01 22:33:08 edd Exp $

COMMENT =		freezes a Flask application into a set of static files

MODPY_EGG_VERSION =	0.12
DISTNAME =		Frozen-Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-frozen-flask-${MODPY_EGG_VERSION}

CATEGORIES =		www
FLAVORS =		python3
FLAVOR ?=

HOMEPAGE =		https://github.com/SimonSapin/Frozen-Flask

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-build:
	cd ${WRKBUILD}/docs && ${MODPY_BIN} -m sphinx . html

DOCS_DIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}frozen-flask
post-install:
	${INSTALL_DATA_DIR} ${DOCS_DIR}
	cp -r ${WRKSRC}/docs/html/* ${DOCS_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
