COMMENT =		library for reading and writing Jcat files
CATEGORIES =		archivers

V =			0.2.1
DISTNAME =		libjcat-${V}

SHARED_LIBS =		jcat	0.0

# LGPL 2.1
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		jcat

WANTLIB =		c gio-2.0 glib-2.0 gobject-2.0 intl

SITES =			https://github.com/hughsie/libjcat/releases/download/${V}/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/glib2

CONFIGURE_ARGS =	-Dgpg=false

post-install:
	rm -rf ${PREFIX}/{libexec,share}/installed-tests/

.include <bsd.port.mk>
