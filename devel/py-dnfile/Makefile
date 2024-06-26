COMMENT =		parse .NET executable files

MODPY_EGG_VERSION =	0.15.0
DISTNAME =		dnfile-${MODPY_EGG_VERSION}
PKGNAME =		py-dnfile-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/malwarefrank/dnfile

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# Test datas for dnfile
TESTFILES_COMMIT =	d2da9190e74f82caa70a8bcd844c929182a8dc8e
DISTFILES.testfiles =	${TESTFILES_COMMIT}.tar.gz
SITES.testfiles =	https://github.com/malwarefrank/dnfile-testfiles/archive/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-pefile

# Prepare datas for tests
post-extract:
	mkdir ${WRKSRC}/tests/data
	cd ${WRKDIR} && cp -a dnfile-testfiles-${TESTFILES_COMMIT}/* \
		${WRKSRC}/tests/data/

	cp files/fixtures.py ${WRKSRC}/tests/

.include <bsd.port.mk>
