COMMENT =		native Spotify client for the GNOME desktop
V =			0.4.0
DIST_TUPLE =		github	xou816	spot	${V}	.
CATEGORIES =		audio x11

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} adwaita-1 curl gdk_pixbuf-2.0 gio-2.0
WANTLIB +=		glib-2.0 gobject-2.0 gtk-4 intl m pulse pulse-simple


MODULES =		devel/cargo \
			devel/meson

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		audio/pulseaudio \
			devel/glib2 \
			x11/gnome/libadwaita \
			x11/gtk+4

RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

SUBS_VARS =		V

post-configure:
	# default meson configure, generate src/config.rs
	${SETENV} ${MODMESON_CONFIGURE_ENV} ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/meson setup \
		    ${MODMESON_CONFIGURE_ARGS} ${WRKSRC} ${WRKBUILD}

post-build:
	# default meson do-build, generate locale files
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/meson compile -C ${WRKBUILD} -v -j ${MAKE_JOBS}

post-install:
	# default meson do-install
	exec ${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${LOCALBASE}/bin/meson install --no-rebuild -C ${WRKBUILD}

.include "crates.inc"
.include <bsd.port.mk>
