# XXX crashes on exit:
# https://github.com/dweymouth/supersonic/issues/301

COMMENT =	lightweight Subsonic and Jellyfin client

V =		0.8.2
MODGO_MODNAME =	github.com/dweymouth/supersonic
MODGO_VERSION =	v${V}

DISTNAME =	supersonic-${V}

CATEGORIES =	audio net
HOMEPAGE =	https://github.com/dweymouth/supersonic
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		GL X11 Xau Xdmcp c m mpv pthread xcb

MODULES =		lang/go

LIB_DEPENDS =		multimedia/mpv

MAKE_ENV =		CGO_CPPFLAGS=-I${LOCALBASE}/include \
			CGO_LDFLAGS=-L${LOCALBASE}/lib

.include "modules.inc"

.include <bsd.port.mk>
