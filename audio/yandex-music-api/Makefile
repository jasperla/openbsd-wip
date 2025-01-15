COMMENT =		unofficial library against the Yandex.Music API
DIST_TUPLE =		github	MarshalX	yandex-music-api	v2.2.0	.
CATEGORIES =		audio devel

# LGPL 3.0
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://yandex-music.rtfd.io

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-aiofiles \
			devel/py-typing-extensions \
			www/py-aiohttp \
			www/py-requests-unixsocket

.include <bsd.port.mk>
