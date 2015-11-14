# $OpenBSD: Makefile,v 1.3 2015/09/29 10:51:54 sthen Exp $

COMMENT =		run a subprocess in a pseudo terminal

MODPY_EGG_VERSION =	0.5
DISTNAME =		ptyprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pexpect/ptyprocess

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

TEST_DEPENDS +=		devel/py-nose

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
