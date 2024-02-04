COMMENT =		native Spotify client for the GNOME desktop
V =			0.4.0
DIST_TUPLE =		github	xou816	spot	${V}	.
CATEGORIES =		audio x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} adwaita-1 curl gdk_pixbuf-2.0
WANTLIB +=		gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS =		audio/portaudio-svn \
			x11/gnome/libadwaita \
			x11/gtk+4

SUBS_VARS =		V

pre-build:
	${SUBST_DATA} {${FILESDIR},${WRKSRC}/src}/config.rs

.include "crates.inc"
.include <bsd.port.mk>
