# $OpenBSD: Makefile,v 1.6 2017/02/11 22:21:58 danj Exp $

COMMENT =	open network for secure, decentralized communication

MODPY_EGG_VERSION =	0.27.4
GH_ACCOUNT =	matrix-org
GH_PROJECT =	synapse
GH_TAGNAME =	v0.27.4
CATEGORIES =	net

HOMEPAGE =	https://matrix.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	textproc/py-lxml \
		textproc/py-yaml \
		textproc/py-unpaddedbase64 \
		textproc/py-signedjson \
		textproc/py-canonicaljson \
		devel/py-asn1 \
		devel/py-blist \
		devel/py-frozendict \
		devel/py-jsonschema \
		devel/py-twisted \
		devel/py-simplejson \
		net/py-msgpack \
		net/py-netaddr \
		www/py-jinja2 \
		www/py-saml2 \
		www/py-macaroons \
		www/py-matrix-angular-sdk \
		graphics/py-Pillow \
		sysutils/py-daemonize \
		security/py-bcrypt \
		security/py-libnacl \
		security/py-service_identity \
		security/py-openssl
TEST_DEPENDS =	${RUN_DEPENDS}
do-test:
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=. ${LOCALBASE}/bin/trial tests

.include <bsd.port.mk>
