# $OpenBSD$

COMMENT =	Audio Normalization
VERSION =	1.19.1
MODPY_EGG_VERSION =	${VERSION}

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

RUN_DEPENDS =		devel/py-tqdm,python3 \
					devel/py-colorama,python3 \
					graphics/ffmpeg
TEST_DEPENDS =		graphics/ffmpeg

.include <bsd.port.mk>
