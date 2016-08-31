# $OpenBSD$

COMMENT =		rapid multi-Python deployment

DISTNAME =		execnet-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.4.1
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://codespeak.net/execnet

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=		devel/py-apipkg \
			devel/py-setuptools_scm
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-test \
			${FULLPKGNAME}:${FULLPKGPATH}

PKG_ARCH =		*

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test -v testing

.include <bsd.port.mk>
