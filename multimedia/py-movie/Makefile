# $OpenBSD$

COMMENT =		Video editing library

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		moviepy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		multimedia

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR} \
			devel/py-proglog \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/ImageMagick \
			graphics/ffmpeg \
			graphics/py-imageio${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

# Needs a conflicting version of pytest.
NO_TEST =		Yes

.include <bsd.port.mk>
