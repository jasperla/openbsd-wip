#	$OpenBSD$

COMMENT=	semantic parser of source files
DISTNAME=	sparse-0.5.0
CATEGORIES=	devel

HOMEPAGE=	https://sparse.wiki.kernel.org/index.php/Main_Page
MASTER_SITES=	https://www.kernel.org/pub/software/devel/sparse/dist/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	textproc/libxml
WANTLIB=	c xml2

NO_TEST=	Yes
USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" PREFIX="${TRUEPREFIX}" V=1

.include <bsd.port.mk>
