# $OpenBSD$

COMMENT =		Audio Normalization

MODPY_EGG_VERSION =	1.20.0
DISTNAME =		ffmpeg-normalize-${MODPY_EGG_VERSION}

CATEGORIES =		audio

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-tqdm${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			graphics/ffmpeg
TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
