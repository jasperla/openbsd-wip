# $OpenBSD$

COMMENT =	object-relational SQL database
DISTNAME =	virtuoso-opensource-6.1.6
PKGNAME =	${DISTNAME:C/-opensource//}
REVISION =	7

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE MagickCore MagickWand SM X11 Xext Xt bz2 c crypto
WANTLIB += djvulibre expat fftw3 fontconfig freetype iconv
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma m png pthread ssl tiff
WANTLIB += wmf-0.2 wmflite-0.2 xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/}

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			devel/gperf \
			lang/gawk

LIB_DEPENDS =		graphics/ImageMagick \
			graphics/lcms2 \
			textproc/libxml

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -L${LOCALBASE}/lib" \
			YACC="${LOCALBASE}/bin/bison -y"

CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-all-vads \
			--disable-hslookup \
			--disable-openldap \
			--disable-php \
			--disable-python \
			--disable-ruby \
			--disable-wbxml2 \
			--without-internal-zlib \
			--with-jdk2=no \
			--with-jdk3=no \
			--with-jdk4=no \
			--with-layout=OpenBSD

# Requires threaded or "multiplicity" Perl
CONFIGURE_ARGS +=	--disable-perl

# Requires MIT Kerberos
CONFIGURE_ARGS +=	--disable-krb

TEST_IS_INTERACTIVE =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/virtuoso
	mv ${WRKINST}/var/virtuoso/* ${PREFIX}/share/virtuoso
	rmdir ${WRKINST}/var/virtuoso

.include <bsd.port.mk>
