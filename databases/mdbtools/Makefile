# $OpenBSD: Makefile,v 1.39 2014/09/07 18:11:07 jasper Exp $

COMMENT-main =		read microsoft Access MDB
COMMENT-gmdb =		graphical interface to MDB tools

GH_ACCOUNT =		brianb
GH_PROJECT =		mdbtools
GH_TAGNAME =		0.7.1

DISTNAME =		mdbtools-${GH_TAGNAME}
PKGNAME-main =		mdbtools-${GH_TAGNAME}
PKGNAME-gmdb =		gmdb-${GH_TAGNAME}
EPOCH =			0

CATEGORIES =		databases converters
HOMEPAGE =		http://mdbtools.sourceforge.net/

MULTI_PACKAGES = 	-main
PSEUDO_FLAVORS =	no_x11
FLAVOR ?=

SHARED_LIBS +=  mdb                  2.0
SHARED_LIBS +=  mdbsql               2.0
SHARED_LIBS +=  mdbodbc              0.0
SHARED_LIBS +=  mdbodbcW             0.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c glib-2.0 intl pthread
WANTLIB-main += ${WANTLIB} iconv iodbcinst pcre readline

WANTLIB-gmdb += ${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 gnome-2
WANTLIB-gmdb += gnomeui-2 gobject-2.0 gtk-x11-2.0 mdb mdbsql pango-1.0

MODULES =		gcc4 \
			devel/gettext \
			x11/gnome

# Copied from lang/gcc/4.8/Makefile, only amd64 tested
MODGCC4_ARCHS =		alpha amd64 i386 powerpc mips64 mips64el sparc64
MODGNOME_TOOLS +=	yelp

BUILD_DEPENDS =		devel/bison \
			textproc/txt2man

LIB_DEPENDS =		devel/glib2
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			databases/iodbc,-main \
			devel/pcre
LIB_DEPENDS-gmdb =	${LIB_DEPENDS} \
			databases/mdbtools,-main>=0.7.1v0 \
			x11/gnome/libgnomeui

RUN_DEPENDS-main =	${MODGETTEXT_RUN_DEPENDS}

CONFIGURE_ENV =		YACC="bison -y"
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-iodbc=${LOCALBASE}
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--disable-gmdb2
.else
MULTI_PACKAGES += 	-gmdb
.endif

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			autoreconf -i -f

.include <bsd.port.mk>
