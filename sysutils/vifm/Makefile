# $OpenBSD$

COMMENT =		ncurses file manager with vi keybindings

DISTNAME =		vifm-0.8.1a

CATEGORIES =		sysutils

HOMEPAGE =		https://vifm.info/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncursesw pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vifm/}
EXTRACT_SUFX =		.tar.bz2

FLAVOR ?=
FLAVORS =		no_x11

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libmagic

RUN_DEPENDS =		devel/desktop-file-utils

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gtk \
			--without-X11
.else
CONFIGURE_ARGS +=	--without-dyn-X11

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

BUILD_DEPENDS = 	devel/gettext-tools

LIB_DEPENDS =		devel/gettext \
			x11/gtk+2
.endif

.include <bsd.port.mk>
