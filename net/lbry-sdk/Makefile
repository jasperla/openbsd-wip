# $OpenBSD$

COMMENT =		official LBRY SDK
MODPY_EGG_VERSION =	0.101.3
GH_ACCOUNT =		lbryio
GH_PROJECT =		lbry-sdk
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		net www
HOMEPAGE =		https://lbry.com/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		No
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-cffi${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			devel/py-docopt${MODPY_FLAVOR} \
			devel/py-hachoir${MODPY_FLAVOR} \
			devel/py-lru${MODPY_FLAVOR} \
			devel/py-protobuf${MODPY_FLAVOR} \
			textproc/py-elasticsearch${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			net/py-msgpack${MODPY_FLAVOR} \
			security/py-base58${MODPY_FLAVOR} \
			security/py-coincurve${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR} \
			security/py-pbkdf2${MODPY_FLAVOR} \
			sysutils/py-distro${MODPY_FLAVOR} \
			sysutils/py-prometheus_client${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-aioupnp${MODPY_FLAVOR} \
			www/py-multidict${MODPY_FLAVOR}

TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-coverage${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lbry-sdk
	${INSTALL_DATA} ${FILESDIR}/daemon_settings.yml \
	    ${PREFIX}/share/examples/lbry-sdk

.include <bsd.port.mk>
