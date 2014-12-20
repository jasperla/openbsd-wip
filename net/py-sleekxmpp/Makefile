# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	1.3.1
GH_ACCOUNT =		fritzy
GH_PROJECT =		SleekXMPP
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_COMMIT =		e5582694c07236e6830c20361840360a1dde37f3
DISTNAME =		${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME =		py-sleekxmpp-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		http://sleekxmpp.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1-modules \
			net/py-dnspython \
			security/py-pygnupg \
			devel/py-dateutil \
			net/py-socks

TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./testall.py

.include <bsd.port.mk>
