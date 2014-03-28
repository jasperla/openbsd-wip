# $OpenBSD$

GH_VER =	0.1
COMMENT =	image viewer designed for browsing folders of images
DISTNAME =	lumee-${GH_VER}
DISTFILES =	${DISTNAME}{v${GH_VER}}.tar.gz
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

MASTER_SITES =	http://github.com/bmars/lumee/archive/

MODULES =	devel/gettext \
		gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -std=c++11"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
