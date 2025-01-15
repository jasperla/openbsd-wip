# TODO
# - needs to fetch modules/packages/whatever, no idea how to bundle stuff
# - setting qtPath needs patches, -d:qtPath=/usr/local/lib/qt5 has no effect
# - fails to build: doesn't now about _mm_store_si128() in some nim dependency


COMMENT =		Yandex.Music client
DIST_TUPLE =		github	levovix0	DMusic	0.4	.
CATEGORIES =		audio x11

# GPL 3.0
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/python

RUN_DEPENDS =		audio/yandex-music-api \
			audio/taglib \
			lang/nim

BUILD_DEPENDS +=	${RUN_DEPENDS}

PORTHOME =		${WRKDIR}

do-build:
	cd ${WRKSRC}; \
	${SETENV} ${MAKE_ENV} \
	nimble build \
		--accept \
		--verbose \
		-d:release

.include <bsd.port.mk>
