# $OpenBSD: Makefile,v 1.6 2017/02/11 22:21:58 danj Exp $

COMMENT =	open network for secure, decentralized communication

MODPY_EGG_VERSION =	0.34.1.1
GH_ACCOUNT =	matrix-org
GH_PROJECT =	synapse
GH_TAGNAME =	v${MODPY_EGG_VERSION}
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-frozendict${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-prometheus_client${MODPY_FLAVOR} \
		devel/py-simplejson${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-twisted${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		net/py-msgpack${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		security/py-bcrypt${MODPY_FLAVOR} \
		security/py-libnacl${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-service_identity${MODPY_FLAVOR} \
		sysutils/py-daemonize${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		telephony/py-phonenumbers${MODPY_FLAVOR} \
		textproc/py-canonicaljson${MODPY_FLAVOR} \
		textproc/py-signedjson${MODPY_FLAVOR} \
		textproc/py-unpaddedbase64${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-matrix-angular-sdk${MODPY_FLAVOR} \
		www/py-pymacaroons${MODPY_FLAVOR} \
		www/py-pysaml2${MODPY_FLAVOR} \
		www/py-treq${MODPY_FLAVOR}
TEST_DEPENDS =	${RUN_DEPENDS}
do-test:
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=. ${LOCALBASE}/bin/trial tests

.include <bsd.port.mk>
