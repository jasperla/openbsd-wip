COMMENT =		file support for asyncio

MODPY_DISTV =		24.1.0
DISTNAME =		aiofiles-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB =		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PYBUILD =		hatchling
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-coverage \
			devel/py-test-asyncio \
			devel/py-tox

.include <bsd.port.mk>
