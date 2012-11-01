# $OpenBSD$

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.6
PKGNAME =	${DISTNAME:C/-opensource//}
REVISION =	1

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =  ICE MagickCore MagickWand SM X11 Xext Xt bz2 c crypto
WANTLIB += djvulibre expat fftw3 fl fontconfig freetype iconv
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma m png pthread ssl tiff
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

MODULES =		lang/php lang/python lang/ruby

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			devel/gperf \
			lang/gawk

LIB_DEPENDS =		graphics/ImageMagick \
			graphics/lcms2 \
			textproc/libxml \

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

COPTS =			-L${LOCALBASE}/lib

CONFIGURE_ENV =		CFLAGS="${CFLAGS}" \
			YACC="${LOCALBASE}/bin/bison -y"

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-all-vads \
			--disable-hslookup \
			--disable-mono \
			--disable-openldap \
			--without-internal-zlib \
			--with-jdk2=no \
			--with-jdk3=no \
			--with-jdk4=no \
			--with-layout=OpenBSD

#REGRESS_IS_INTERACTIVE =	Yes
#REGRESS_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/virtuoso
	mv ${WRKINST}/var/virtuoso/* ${PREFIX}/share/virtuoso
	rmdir ${WRKINST}/var/virtuoso

.include <bsd.port.mk>
