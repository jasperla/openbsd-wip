COMMENT =		Python docstring style checker

MODPY_EGG_VERSION =	6.3.0
DISTNAME =		pydocstyle-${MODPY_EGG_VERSION}
PKGNAME =		py-docstyle-${MODPY_EGG_VERSION}

CATEGORIES =		devel textproc

HOMEPAGE =		http://pydocstyle.org/

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		textproc/py-snowballstemmer${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
