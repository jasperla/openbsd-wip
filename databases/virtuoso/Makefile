# $OpenBSD$

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.3
PKGNAME =	${DISTNAME:C/-opensource//}
REVISION =	0

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

FLAVORS =	java
FLAVOR ?=

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 c crypto
WANTLIB += djvulibre expat fftw3 fl fontconfig freetype iconv
WANTLIB += jasper jbig jpeg lcms ltdl lzma m png pthread ssl tiff
WANTLIB += wbxml2 wmf-0.2 wmflite-0.2 xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

MODULES =		lang/mono lang/php lang/python lang/ruby

.if ${FLAVOR:Mjava}
MODULES +=		java
MODJAVA_VER =		1.6
.endif

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			lang/gawk

LIB_DEPENDS =		textproc/libwbxml \
			graphics/ImageMagick \
			textproc/libxml \

#USE_GROFF =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.9

# Disable system cache, or configure will pickup flex from base system
CONFIG_SITE =

COPTS =			-I${LOCALBASE}/include/wbxml \
			-L${LOCALBASE}/lib

CONFIGURE_ENV =		FLEX="${LOCALBASE}/bin/gflex" \
			GAWK="${LOCALBASE}/bin/gawk" \
			AWK="${LOCALBASE}/bin/gawk" \
			LEX="${LOCALBASE}/bin/gflex" \
			YACC="${LOCALBASE}/bin/bison -y" \
			CFLAGS="${CFLAGS}"

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--disable-hslookup \
			--disable-all-vads \
			--without-internal-zlib \
			--with-jdk2=no \
			--with-jdk3=no

.if ${FLAVOR:Mjava}
CONFIGURE_ARGS +=	--with-jdk4=${JAVA_HOME}
.else
CONFIGURE_ARGS +=	--with-jdk4=no
.endif

#REGRESS_IS_INTERACTIVE =	Yes
#REGRESS_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/virtuoso
	mv ${WRKINST}/var/lib/virtuoso/* ${PREFIX}/share/virtuoso

.include <bsd.port.mk>
