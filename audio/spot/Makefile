COMMENT =		native Spotify client for the GNOME desktop
DIST_TUPLE =		github	xou816	spot	0.4.0	.
CATEGORIES =		audio x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	# empty

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# XXX not tweable via features, patch-Cargo_toml drops ALSA,
# forcing PulseAudio needs more surgery
LIB_DEPENDS =		audio/pulseaudio

.include "crates.inc"
.include <bsd.port.mk>