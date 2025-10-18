COMMENT =		UPnP DLNA server with transcoding
CATEGORIES =		multimedia net

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.7.2
DISTNAME =		dms-${MODGO_VERSION}

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

# XXX I cannot get GH_COMMIT to work with go-module(5).
SITES.ipv6 =		https://${MODGO_MODNAME}/commit/
# first commit after release: "feat: add IPv6 support for SSDP"
PATCHFILES.ipv6 =	105c744ed2138c85167c2d8b66cb3830694fba24.patch
# pending 'Always resolve -http arguments containing "[" as IPv6 (only)'
# https://github.com/anacrolix/dms/pull/171
PATCHFILES.ipv6 =	b967129a84834ce4fb19317f6f56d7e66478f1d7.patch
PATCH_DIST_STRIP =	-p1

# make patch and update-patches work
WRKDIST =		${WRKSRC}

MODULES =		lang/go

# XXX '-forceTranscodeTo vp8' wants unported avconv
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
