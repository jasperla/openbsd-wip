# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		the fastest markdown parser in pure Python

MODPY_EGG_VERSION =	0.7
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

WANTLIB +=		pthread python2.7

TEST_DEPENDS =		devel/py-nose
LIB_DEPENDS +=		${MODPY_LIB_DEPENDS}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
