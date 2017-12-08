# $OpenBSD$

COMMENT =		community Python library for Astronomy
MODPY_EGG_VERSION =	2.0
DISTNAME =		astropy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		astro

HOMEPAGE =		http://www.astropy.org/
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		lang/cython \
			math/py-numpy \
			www/py-jinja2

TEST_DEPENDS =		devel/py-test \
			math/py-numpy

.include <bsd.port.mk>
