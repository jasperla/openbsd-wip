COMMENT =		twisted plugin for pytest
CATEGORIES =		devel
MODPY_DISTV =		1.14.3
DISTNAME =		pytest_twisted-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/:S/_/-/}

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-decorator \
			devel/py-greenlet \
			devel/py-test

.include <bsd.port.mk>
