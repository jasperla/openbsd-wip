# $OpenBSD$

V =		10.3.1
COMMENT =	elegant, modern desktop that integrates with GNOME
DISTNAME =	budgie-desktop-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	x11

# Must be kept in sync.
SHARED_LIBS +=	budgie-plugin             0.0 # 0.0
SHARED_LIBS +=	budgietheme               0.0 # 0.0
SHARED_LIBS +=	raven                     0.0 # 0.0

HOMEPAGE =	https://budgie-desktop.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# libs: LGPLv2.1+
# bins: GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gnome-desktop-3 gnome-menu-3 gobject-2.0 gtk-3
WANTLIB += ibus-1.0 intl m mutter-0 pango-1.0 peas-1.0 polkit-agent-1
WANTLIB += polkit-gobject-1 pulse pulse-mainloop-glib upower-glib
WANTLIB += uuid wnck-3

MASTER_SITES =	https://github.com/budgie-desktop/budgie-desktop/releases/download/v${V}/

MODULES =	devel/meson \
		x11/gnome

BUILD_DEPENDS =	devel/gettext-tools \
		devel/gsettings-desktop-schemas \
		sysutils/accountsservice

LIB_DEPENDS =	audio/pulseaudio \
		devel/libpeas \
		devel/libwnck3 \
		inputmethods/ibus \
		sysutils/e2fsprogs \
		x11/gnome/desktop \
		x11/gnome/menus \
		x11/gnome/mutter

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gsettings-desktop-schemas \
		sysutils/accountsservice \
		x11/gnome/session \
		x11/gtk+3,-guic

pre-configure:
	sed -i 's,$${X11BASE},${X11BASE},g' ${WRKSRC}/src/plugin/meson.build

# meson is hella fucked.
post-configure:
	sed -i 's,\.so\.0 ,.so.${LIBraven_VERSION} ,g' ${WRKBUILD}/build.ninja

# Is there a better way?
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/budgie-desktop
	@mv ${WRKINST}/etc/xdg ${PREFIX}/share/examples/budgie-desktop
	@rm -f ${WRKINST}/usr/local/lib/*.so{,.0}

.include <bsd.port.mk>
