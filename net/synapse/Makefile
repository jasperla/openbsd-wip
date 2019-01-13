# $OpenBSD: Makefile,v 1.6 2017/02/11 22:21:58 danj Exp $

COMMENT =	open network for secure, decentralized communication

MODPY_EGG_VERSION =	0.33.9
GH_ACCOUNT =	matrix-org
GH_PROJECT =	synapse
GH_TAGNAME =	v${MODPY_EGG_VERSION}
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-asn1 \
		devel/py-dateutil \
		devel/py-frozendict \
		devel/py-future \
		devel/py-jsonschema \
		devel/py-prometheus_client \
		devel/py-simplejson \
		devel/py-sortedcontainers \
		devel/py-twisted \
		devel/py-tz \
		graphics/py-Pillow \
		net/py-msgpack \
		net/py-netaddr \
		security/py-bcrypt \
		security/py-libnacl \
		security/py-openssl \
		security/py-service_identity \
		sysutils/py-daemonize \
		sysutils/py-psutil \
		telephony/py-phonenumbers \
		textproc/py-canonicaljson \
		textproc/py-signedjson \
		textproc/py-unpaddedbase64 \
		textproc/py-yaml \
		www/py-jinja2 \
		www/py-matrix-angular-sdk \
		www/py-saml2 \
		www/py-pymacaroons \
		www/py-treq
TEST_DEPENDS =	${RUN_DEPENDS}
do-test:
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=. ${LOCALBASE}/bin/trial tests

.include <bsd.port.mk>
