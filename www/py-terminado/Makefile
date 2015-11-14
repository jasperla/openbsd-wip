# $OpenBSD: Makefile,v 1.3 2015/09/29 10:51:54 sthen Exp $

COMMENT =		terminals served to term.js using Tornado websockets

MODPY_EGG_VERSION =	0.5
DISTNAME =		terminado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/takluyver/terminado

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

RUN_DEPENDS +=		devel/py-ptyprocess \
			www/py-tornado
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-nose \
			${FULLPKGNAME}:${FULLPKGPATH}

# One test fails:
# https://github.com/takluyver/terminado/issues/21
do-test:
	${LOCALBASE}/bin/nosetests ${MODPY_SITEPKG}/terminado

.include <bsd.port.mk>
