COMMENT =		UPnP DLNA server with transcoding

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.7.2
DISTNAME =		dms-${MODGO_VERSION}

# XXX I cannot get GH_COMMIT to work with go-module(5).
# first commit after release: "feat: add IPv6 support for SSDP"
SITES.ipv6 =		https://${MODGO_MODNAME}/commit/
PATCHFILES.ipv6 =	105c744ed2138c85167c2d8b66cb3830694fba24.patch
PATCH_DIST_STRIP =	-p1

# make patch and update-patches work
WRKDIST =		${WRKSRC}

CATEGORIES =		multimedia net

# BSD 3-clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

# XXX '-forceTranscodeTo vp8' wants unported avconv
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
