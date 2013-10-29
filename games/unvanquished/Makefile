# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

COMMENT =		fast-paced, futuristic FPS with RTS elements

DISTNAME =		unvanquished-0.19.0

CATEGORIES =		games

HOMEPAGE =		http://www.unvanquished.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU SDL X11 c curl freetype gmp hogweed jpeg
WANTLIB += m ncursesw nettle ogg png pthread speex speexdsp stdc++
WANTLIB += theora vorbis vorbisfile webp xvidcore z

MASTER_SITES =		http://unvanquished.net/downloads/sources/stripped/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake
LIB_DEPENDS =		audio/libogg \
			audio/speex \
			audio/libvorbis \
			devel/sdl \
			graphics/glew \
			graphics/jpeg \
			graphics/png \
			graphics/libwebp \
			multimedia/libtheora \
			multimedia/xvidcore \
			net/curl \
			security/libnettle

NO_TEST =		Yes

.include <bsd.port.mk>
