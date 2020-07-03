# $OpenBSD$

COMMENT =	Audio Normalization
VERSION =	1.19.1

DISTNAME =	v${VERSION}
PKGNAME =	ffmpeg-normalize-${VERSION}

CATEGORIES =	audio

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/slhck/ffmpeg-normalize/archive/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

WRKDIST =		${WRKDIR}/ffmpeg-normalize-${VERSION}

RUN_DEPENDS =		devel/py-tqdm${MODPY_FLAVOR} \
					devel/py-colorama${MODPY_FLAVOR} \
					graphics/ffmpeg
TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
