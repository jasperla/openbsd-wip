# $OpenBSD$

COMMENT =	lightweight Bitcoin wallet

VERSION =	4.3.4
DISTNAME =	Electrum-${VERSION}
PKGNAME =	electrum-${VERSION}

CATEGORIES =	productivity

HOMEPAGE =	https://electrum.org

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://download.electrum.org/${VERSION}/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

# Core depdendencies.
RUN_DEPENDS =		x11/py-qt5${MODPY_FLAVOR} \
			security/py-aes${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR} \
			graphics/py-qrcode${MODPY_FLAVOR} \
			devel/py-protobuf${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			devel/py-bitstring${MODPY_FLAVOR} \
			net/bitcoin

# missing dependencies
# aiorpcx>=0.18,<0.19
# aiohttp_socks

# XXX other deps in requirements-hw.txt that we can consider optional for now
# hopefully.

.include <bsd.port.mk>
