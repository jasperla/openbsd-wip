# $OpenBSD: Makefile,v 1.40 2012/03/29 13:38:31 sthen Exp $

COMMENT =	IJG libjpeg compatible, accellerated JPEG (de)compression

V =		1.2.0
DISTNAME =	libjpeg-turbo-$V
SHARED_LIBS +=	jpeg	64.0	# 11.0
SHARED_LIBS +=	turbojpeg	0.0
CATEGORIES =	graphics
HOMEPAGE =	http://www.libjpeg-turbo.org/

PKGNAME =	jpeg-${V}-turbo

# BSD-style
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libjpeg-turbo/}
DISTFILES =	libjpeg-turbo-${V}.tar.gz

WANTLIB =	c m

BUILD_DEPENDS =	devel/nasm>=2.00

SEPARATE_BUILD =	Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
# Symbol versioning triggers weird linking problems in dependent ports.
CONFIGURE_ARGS +=	--disable-ld-version-script --with-jpeg8

post-install:
	mv	${PREFIX}/lib/libturbojpeg.so \
		${PREFIX}/lib/libturbojpeg.so.${LIBturbojpeg_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/libjpeg.txt ${WRKSRC}/wizard.txt \
	    ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKSRC}/example.c ${PREFIX}/share/examples/jpeg

.include <bsd.port.mk>
