# $OpenBSD$

COMMENT =	free implementation of Hearts card game
DISTNAME =	gnome-hearts-0.3.1
CATEGORIES =	games x11

HOMEPAGE =	http://www.jejik.com/gnome-hearts/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 popt pthread
WANTLIB += xml2 z ${MODPY_WANTLIB}

MASTER_SITES =	http://www.jejik.com/files/gnome-hearts/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/libglade2 \
		x11/gnome/libgnomeui

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# BSD make doesn't know how to make the .desktop file
USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
