# $OpenBSD$

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.4
PKGNAME =	${DISTNAME:C/-opensource//}
REVISION =	2

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 c crypto
WANTLIB += djvulibre expat fftw3 fl fontconfig freetype iconv
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma m png pthread ssl tiff
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

MODULES =		lang/mono lang/php lang/python lang/ruby

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			lang/gawk

LIB_DEPENDS =		textproc/libwbxml \
			graphics/ImageMagick \
			graphics/lcms2 \
			textproc/libxml \

#USE_GROFF =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.68
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
			--with-jdk3=no \
			--with-jdk4=no

#REGRESS_IS_INTERACTIVE =	Yes
#REGRESS_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/virtuoso
	mv ${WRKINST}/var/lib/virtuoso/* ${PREFIX}/share/virtuoso

.include <bsd.port.mk>
