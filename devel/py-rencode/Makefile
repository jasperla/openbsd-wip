# $OpenBSD$

COMMENT =	module for fast object serialization similar to bencode

MODPY_EGG_VERSION =	1.0.5
DISTNAME =		rencode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/aresch/rencode

#
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB += 		pthread ${MODPY_WANTLIB}

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py build

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py install --root=${WRKINST}

.include <bsd.port.mk>
