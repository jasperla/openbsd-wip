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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} ./testall.py

.include <bsd.port.mk>
