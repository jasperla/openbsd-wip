# $OpenBSD$

COMMENT =	Python implementation of PBKDF2

MODPY_EGG_VERSION =	1.3
DISTNAME =		pbkdf2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security devel
MAINTAINER =		Giannis Tsaraias <yannis@cryptolab.net>

HOMEPAGE =		http://wwww.dlitz.net/software/python-pbkdf2/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI = 		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

do-test: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test_pbkdf2.py

.include <bsd.port.mk>
