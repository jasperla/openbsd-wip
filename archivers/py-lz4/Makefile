# $OpenBSD: Makefile,v 1.30 2018/04/28 10:47:05 pvk Exp $

COMMENT =		lz4 bindings for python

MODPY_EGG_VERSION =	2.1.0
DISTNAME =		lz4-${MODPY_EGG_VERSION}
PKGNAME =		py-lz4-${MODPY_EGG_VERSION}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/python-lz4/python-lz4

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += 		pthread ${MODPY_WANTLIB}

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR} \
			devel/py-test-runner

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-future
.endif

TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest


.include <bsd.port.mk>
