# $OpenBSD$

CATEGORIES =		graphics devel print
COMMENT =		reading and writing Data Matrix ECC200 barcodes
DISTNAME =		libdmtx-0.7.4
HOMEPAGE =		http://www.libdmtx.org/

SHARED_LIBS =		dmtx		0.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# BSDL, LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	simple
USE_LIBTOOL =		Yes

REGRESS_FLAGS =		CFLAGS="${CFLAGS} -I${WRKSRC}"

.include <bsd.port.mk>
