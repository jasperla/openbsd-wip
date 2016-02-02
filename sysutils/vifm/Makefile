# $OpenBSD$

COMMENT =		ncurses file manager with vi keybindings

DISTNAME =		vifm-0.8.1

CATEGORIES =		sysutils

HOMEPAGE =		https://vifm.info/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncursesw pthread

MASTER_SITES =		http://prdownloads.sourceforge.net/vifm/
EXTRACT_SUFX =		.tar.bz2

FLAVOR ?=
FLAVORS =		no_x11

CONFIGURE_STYLE =	gnu

RUN_DEPENDS =		devel/desktop-file-utils

.if ${FLAVOR:Mno_x11}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 z

CONFIGURE_ARGS +=	--without-libmagic \
			--without-dyn-x11
MODULES =		devel/gettext
LIB_DEPENDS +=		x11/gtk+2
.else
LIB_DEPENDS +=		devel/libmagic
CONFIGURE_ARGS +=	--without-gtk \
			--without-X11
.endif

.include <bsd.port.mk>
