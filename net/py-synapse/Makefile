# $OpenBSD: Makefile,v 1.21 2013/03/11 11:35:55 espie Exp $

COMMENT =	homeserver for matrix.org

GH_TAGNAME =	v0.18.1
GH_PROJECT =	synapse
GH_ACCOUNT =	matrix-org
CATEGORIES =   	net

HOMEPAGE =	https://github.com/matrix-org/synapse

# Python License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	devel/libffi \
		devel/py-virtualenv \
		graphics/jpeg \
		textproc/libxslt,-python
		

.include <bsd.port.mk>
