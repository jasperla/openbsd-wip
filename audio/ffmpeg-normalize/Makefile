# $OpenBSD$

COMMENT =	Audio Normalization

GH_ACCOUNT =	slhck
GH_PROJECT =	ffmpeg-normalize
GH_TAGNAME =	v1.19.1

CATEGORIES =	audio

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-tqdm${MODPY_FLAVOR} \
					devel/py-colorama${MODPY_FLAVOR} \
					graphics/ffmpeg
TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
