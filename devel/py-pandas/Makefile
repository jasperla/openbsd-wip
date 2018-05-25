# $OpenBSD: Makefile,v 1.5 2018/04/26 20:29:26 danj Exp $

COMMENT=		data analysis and manipulation library

MODPY_EGG_VERSION=	0.23.0
DISTNAME=		pandas-${MODPY_EGG_VERSION}
PKGNAME=                py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/pandas-dev/pandas/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI =              Yes
MODPY_SETUPTOOLS=       Yes

WANTLIB+=		${COMPILER_LIBCXX} m python2.7
BUILD_DEPENDS+=		math/py-numpy${MODPY_FLAVOR}
RUN_DEPENDS+=		math/py-numpy${MODPY_FLAVOR}>=1.9.0 \
			devel/py-dateutil${MODPY_FLAVOR}>=2.5.0 \
			devel/py-tz${MODPY_FLAVOR}

FLAVORS=                python3
FLAVOR?=

TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			math/py-numexpr${MODPY_FLAVOR}
FAKE_TEST_DIR=		${WRKINST}${MODPY_SITEPKG}/pandas
do-test:
	cd ${WRKSRC} & ${MODPY_BIN} -m pytest ${FAKE_TEST_DIR}


.include <bsd.port.mk>
