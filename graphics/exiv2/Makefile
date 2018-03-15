# $OpenBSD: Makefile,v 1.26 2017/07/26 22:45:23 sthen Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.26-trunk
PKGNAME=	exiv2-0.26
CATEGORIES=	graphics devel

SHARED_LIBS +=  exiv2                9.0      # 14.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat iconv intl m z

MASTER_SITES=	http://www.exiv2.org/builds/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/gettext

CONFIGURE_ARGS=	--enable-static

NO_TEST=	Yes

WRKDIST=		${WRKDIR}/exiv2-trunk

.include <bsd.port.mk>
