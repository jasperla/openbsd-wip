COMMENT =		client library for Spotify
DIST_TUPLE =		github	librespot-org	librespot	v0.4.2	.
CATEGORIES =		audio net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m portaudio

MODULES =		devel/cargo

LIB_DEPENDS =		audio/portaudio-svn

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	portaudio-backend

.include "crates.inc"
.include <bsd.port.mk>
