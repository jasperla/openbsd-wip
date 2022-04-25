COMMENT =	Python bindings for GMP/MPIR, MPFR, and MPC

MODPY_EGG_VERSION =	2.1.2

DISTNAME =	gmpy2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	math

MAINTAINER =	Theo Buehler <tb@openbsd.org>

HOMEPAGE =	https://github.com/aleaxit/gmpy

# LGPL3+
PERMIT_PACKAGE =	Yes

WANTLIB =	gmp mpc mpfr pthread

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=	python3

CFLAGS +=	-I${LOCALBASE}/include

LIB_DEPENDS =	devel/gmp,-main \
		devel/mpfr \
		devel/libmpc

TEST_DEPENDS =	devel/py-future${MODPY_FLAVOR} \
		${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
