# $OpenBSD$

COMMENT =		directory iterator

MODPY_EGG_VERSION =	1.8
DISTNAME =		scandir-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/benhoyt/scandir

# BSD 3-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS +=		sysutils/py-scandir${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-unittest2
.endif

do-test:
	cd ${WRKSRC}/test &&\
	env LC_ALL=C.UTF-8 LANG=C.UTF-8 ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
