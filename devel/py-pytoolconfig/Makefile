COMMENT =		Python tool configuration

MODPY_EGG_VERSION =	1.2.5
DISTNAME =		pytoolconfig-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/bagel897/pytoolconfig

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# Build uses pdm-backend
MODPY_PYBUILD =		Yes

BUILD_DEPENDS =		devel/py-pdm-backend${MODPY_FLAVOR}

RUN_DEPENDS =		textproc/py-tomli${MODPY_FLAVOR}>=2.0.1 \
			sysutils/py-packaging${MODPY_FLAVOR}>=22.0

TEST_DEPENDS =		devel/py-tabulate${MODPY_FLAVOR}>=0.8.9

.include <bsd.port.mk>
