# $OpenBSD$

COMMENT =		sign JSON with Ed25519 signatures

MODPY_EGG_VERSION =	1.0.0
#DISTNAME =		signedjson-${MODPY_EGG_VERSION}
PKGNAME =		py-signedjson-${MODPY_EGG_VERSION}

GH_ACCOUNT =	matrix-org
GH_PROJECT =	python-signedjson
GH_TAGNAME =	v${MODPY_EGG_VERSION}
CATEGORIES =		textproc

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-canonicaljson${MODPY_FLAVOR} \
			textproc/py-unpaddedbase64${MODPY_FLAVOR} \
			security/py-libnacl${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
