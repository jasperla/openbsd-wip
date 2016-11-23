# $OpenBSD: Makefile,v 1.21 2013/03/11 11:35:55 espie Exp $

COMMENT =	homeserver for matrix.org

GH_TAGNAME =	v0.18.1
GH_PROJECT =	synapse
GH_ACCOUNT =	matrix-org
CATEGORIES =   	net

PKGNAME =	py-${GH_PROJECT}-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://github.com/matrix-org/synapse

# Python License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	devel/libffi \
		devel/py-virtualenv \
		graphics/jpeg \
		devel/py-frozendict \
		devel/py-pydenticon \
		textproc/libxslt,-python \
		net/py-msgpack \
		security/py-bcrypt \
		textproc/py-yaml \
		devel/py-blist \
		graphics/py-Pillow \
		security/py-openssl \
		devel/py-service_identity

#devel/py-pymacaroons_pynacl \
		

.include <bsd.port.mk>
