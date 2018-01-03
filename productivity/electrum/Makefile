# $OpenBSD: $
COMMENT =	lightweight Bitcoin wallet

VERSION =	3.0.3
DISTNAME =	Electrum-${VERSION}
PKGNAME =	electrum-${VERSION}

CATEGORIES =	productivity

HOMEPAGE =	https://electrum.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://download.electrum.org/${VERSION}/

MODULES=		lang/python

MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		x11/py-qt5${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-jsonrpclib${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR} \
			security/py-pbkdf2${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

#pyaes==1.6.1
#qrcode==5.3

#certifi==2017.11.5
#chardet==3.0.4
#dnspython==1.15.0
#ecdsa==0.13
#idna==2.6
#jsonrpclib-pelix==0.3.1
#pbkdf2==1.3
#protobuf==3.5.0.post1
#PySocks==1.6.7
#requests==2.18.4
#six==1.11.0
#urllib3==1.22

BUILD_DEPENDS =		x11/py-qt5${MODPY_FLAVOR} \
			devel/protobuf \


.include <bsd.port.mk>
