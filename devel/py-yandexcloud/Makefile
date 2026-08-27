COMMENT =		offical Yandex Cloud SDK
MODPY_DISTV =		0.404.0
DISTNAME =		yandexcloud-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://yandex.cloud/en/docs/functions/lang/python/sdk

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-deprecated>1.2.18 \
			devel/py-protobuf>6.31.1 \
			devel/py-six>=1.17.0 \
			net/py-googleapis-common-protos>=1.66.0 \
			net/py-grpcio>=1.68.1 \
			net/py-grpcio-tools>=1.76.0 \
			security/py-cryptography>=44.0.0 \
			www/py-jwt>=2.10.1 \
			www/py-requests>=2.32.3

.include <bsd.port.mk>
