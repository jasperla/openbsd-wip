# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:15 sthen Exp $

COMMENT=	compact disk input and control library

DISTNAME=	libcdio-2.1.0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	audio devel
MASTER_SITES=	${MASTER_SITE_GNU:=libcdio/}

SHARED_LIBS=	cdio		1.0 \
		cdio++		1.0 \
		iso9660		1.0 \
		iso9660++	1.0 \
		udf		1.0

HOMEPAGE=	https://www.gnu.org/software/libcdio/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c cddb iconv m ${COMPILER_LIBCXX}

LIB_DEPENDS=	audio/libcddb \
		converters/libiconv

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-vcd-info

BUILD_DEPENDS +=	devel/libtool
CONFIGURE_ARGS +=	--enable-maintainer-mode

.include <bsd.port.mk>
