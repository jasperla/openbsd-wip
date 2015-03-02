# $OpenBSD$

V =		0.3
COMMENT =	image viewer designed for browsing folders of images
DISTNAME =	lumee-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	graphics x11

HOMEPAGE =	https://github.com/bmars/lumee/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3
WANTLIB += gtkmm-3.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pthread sigc-2.0 z

# These tarballs have properly generated configure files.
# The GitHub checkouts do not.
MASTER_SITES =	http://github.com/bmars/lumee/releases/download/v${V}/

MODULES =	devel/dconf \
		devel/gettext \
		gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c++

LIB_DEPENDS =	x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

.include <bsd.port.mk>
