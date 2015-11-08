# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		a configuration system for Python applications

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS =		devel/py-ipython_genutils \
			devel/py-decorator
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
