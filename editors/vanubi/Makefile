# $OpenBSD$

GH_VER =	0.0.12
COMMENT =	programming editor written in vala
DISTNAME =	vanubi-${GH_VER}
DISTFILES =	${DISTNAME}{v${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	editors x11

SHARED_LIBS +=  vanubi-0.1                0.0 # 0.0

HOMEPAGE =	http://vanubi.github.io/vanubi/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += util vte2_90 wnck-3 xcb xcb-render xcb-shm xcb-util
WANTLIB += xml2 z

MASTER_SITES =	https://github.com/vanubi/vanubi/archive/

MODULES =	devel/gettext

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		lang/vala

LIB_DEPENDS =	devel/libwnck3 \
		devel/vte3 \
		x11/gtksourceview3

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-asciidoc

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
