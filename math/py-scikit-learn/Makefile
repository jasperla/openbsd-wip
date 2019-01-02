# $OpenBSD$

COMMENT=		machine learning for Python

MODPY_EGG_VERSION=	0.20.0
DISTNAME=		scikit-learn-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		math

MAINTAINER=		Paul Irofti <pirofti@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += blas cblas m pthread ${COMPILER_LIBCXX} util

COMPILER =		base-clang ports-gcc base-gcc

HOMEPAGE=		https://scikit-learn.org/

MODULES=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS=       Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		math/cblas \
			math/blas \
			math/py-numpy${MODPY_FLAVOR}>=1.8.2 \
			math/py-scipy${MODPY_FLAVOR}>=0.13.3 \
			graphics/py-matplotlib${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}>=3.3.0

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

do-test: fake
	cd ${WRKSRC} && \
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		setup.py build_ext --inplace && \
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		-m pytest sklearn

.include <bsd.port.mk>
