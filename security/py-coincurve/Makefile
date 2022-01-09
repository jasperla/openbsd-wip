# $OpenBSD$

COMMENT =		python bindings for libsecp256k1
MODPY_EGG_VERSION =	16.0.0

DISTNAME =		coincurve-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security
HOMEPAGE =		https://ofek.dev/coincurve/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVOR=python3
FLAVORS=python3

WANTLIB += pthread secp256k1

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/secp256k1 \
			devel/py-cffi${MODPY_FLAVOR} \
			security/py-asn1crypto${MODPY_FLAVOR}

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
