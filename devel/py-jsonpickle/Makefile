# $OpenBSD$

COMMENT =		library for serializing any arbitrary object graph into JSON

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		jsonpickle-${MODPY_EGG_VERSION}
PKGNAME =		py-jsonpickle-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://jsonpickle.github.io/

MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

# New BSD license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=j/jsonpickle/}

MODULES =		lang/python

TEST_DEPENDS =		textproc/py-feedparser \
			devel/py-simplejson

MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_INSTALL=install --prefix=${LOCALBASE} --root=${DESTDIR}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
