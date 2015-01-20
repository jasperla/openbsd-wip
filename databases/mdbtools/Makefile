# $OpenBSD: Makefile,v 1.39 2014/09/07 18:11:07 jasper Exp $

# Copied from lang/gcc/4.8/Makefile, only amd64 tested
ONLY_FOR_ARCHS = alpha amd64 i386 powerpc mips64 mips64el sparc64

COMMENT-main=		read microsoft Access MDB
COMMENT-gmdb=		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

DISTNAME=		mdbtools-${GH_TAGNAME}
PKGNAME-main=		mdbtools-${GH_TAGNAME}
PKGNAME-gmdb=		gmdb-${GH_TAGNAME}

CATEGORIES=		databases converters
HOMEPAGE=		http://mdbtools.sourceforge.net/

MULTI_PACKAGES= 	-main -gmdb

SHARED_LIBS +=  mdb                  1.0      # 1.0
SHARED_LIBS +=  mdbsql               1.0      # 1.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 intl pthread
WANTLIB-main += ${WANTLIB} iconv iodbcinst pcre readline

WANTLIB-gmdb += ${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 gnome-2
WANTLIB-gmdb += gnomeui-2 gobject-2.0 gtk-x11-2.0 mdb mdbsql pango-1.0

#WANTLIB += c pcre glib-2.0 pthread
#
#WANTLIB-main += ${WANTLIB} readline termcap
#
#WANTLIB-gmdb += ${WANTLIB}
#WANTLIB-gmdb += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
#WANTLIB-gmdb += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
#WANTLIB-gmdb += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 cairo
#WANTLIB-gmdb += canberra crypto dbus-1 dbus-glib-1 expat ffi fontconfig
#WANTLIB-gmdb += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
#WANTLIB-gmdb += gio-2.0 glade-2.0 gmodule-2.0 gnome-2 gnome-keyring
#WANTLIB-gmdb += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
#WANTLIB-gmdb += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl m mdb
#WANTLIB-gmdb += mdbsql ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
#WANTLIB-gmdb += png popt pthread-stubs ssl util vorbis vorbisfile xcb
#WANTLIB-gmdb += xcb-render xcb-shm xml2 z

MODULES =		gcc4 \
			devel/gettext \
			x11/gnome

MODGCC4_ARCHS =		${ONLY_FOR_ARCHS}
MODGNOME_TOOLS +=	yelp

BUILD_DEPENDS=		devel/bison \
			textproc/txt2man

LIB_DEPENDS =		devel/glib2

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/iodbc,-main \
			devel/pcre

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}

LIB_DEPENDS-gmdb=	${LIB_DEPENDS} \
			databases/mdbtools \
			x11/gnome/libgnomeui

CONFIGURE_ENV =		YACC="bison -y"
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}
USE_LIBTOOL=		gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			autoreconf -i -f

.include <bsd.port.mk>
