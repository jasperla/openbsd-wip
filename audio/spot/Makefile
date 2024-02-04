COMMENT =		native Spotify client for the GNOME desktop
V =			0.4.0
DIST_TUPLE =		github	xou816	spot	${V}	.
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
LIB_DEPENDS =		audio/pulseaudio \
			x11/gnome/libadwaita \
			x11/gtk+4

SUBS_VARS =		V

pre-build:
	${SUBST_DATA} {${FILESDIR},${WRKSRC}/src}/config.rs

.include "crates.inc"
.include <bsd.port.mk>
