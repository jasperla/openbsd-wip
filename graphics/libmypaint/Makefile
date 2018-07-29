# $OpenBSD$

COMMENT =	library for making brushstrokes

VER =		1.3.0
NAME =		libmypaint
DISTNAME =	${NAME}-${VER}

SHARED_LIBS +=		mypaint-1.3	0.0 # 0.0
SHARED_LIBS +=		mypaint-gegl	0.0 # 0.0
SHARED_LIBS +=		mypaint		0.0 # 0.0

CATEGORIES =	graphics

HOMEPAGE =	http://mypaint.org

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES +=	https://github.com/mypaint/${NAME}/releases/download/v${VER}/
EXTRACT_SUFX =	.tar.xz

MODULES =		textproc/intltool 

COMPILER =		ports-gcc
COMPILER_LANGS =	c

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

WANTLIB += babl-0.1 ffi gegl-0.3 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl json-c json-glib-1.0
WANTLIB += m pcre pthread z

BUILD_DEPENDS +=	devel/gobject-introspection

LIB_DEPENDS +=		devel/json-c \
			devel/glib2 \
			graphics/babl \
			graphics/gegl03

RUN_DEPENDS +=		devel/gobject-introspection

TEST_DEPENDS +=		devel/gobject-introspection

CONFIGURE_ARGS +=	--enable-gegl

.include <bsd.port.mk>
