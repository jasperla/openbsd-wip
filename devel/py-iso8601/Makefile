# $OpenBSD$

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	0.1.10
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS =		devel/py-test

do-test:
	cd ${WRKSRC} && py.test --verbose iso8601

.include <bsd.port.mk>
