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
			net/py-aiorpcx${MODPY_FLAVOR} \
			net/py-aiohttp_socks${MODPY_FLAVOR} \
			net/py-python-socks${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			devel/py-bitstring${MODPY_FLAVOR} \
			net/bitcoin

# XXX other deps in requirements-hw.txt that we can consider optional for now
# hopefully.

.include <bsd.port.mk>
