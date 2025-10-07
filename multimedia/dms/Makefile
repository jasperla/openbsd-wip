COMMENT =		UPnP DLNA server with transcoding

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.7.2
DISTNAME =		dms-${MODGO_VERSION}

CATEGORIES =		multimedia net

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

# XXX '-forceTranscodeTo vp8' wants unported avconv
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
