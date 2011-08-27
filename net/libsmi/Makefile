# $OpenBSD$

COMMENT=	library to access SMI MIB information

VERSION=	0.4.8
DISTNAME=	libsmi-${VERSION}
SHARED_LIBS=	smi	0.0

CATEGORIES=	net

MAINTAINER = 	Nigel Taylor <nigel@openbsd.org>

HOMEPAGE=	http://www.ibr.cs.tu-bs.de/projects/libsmi/

#BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/libsmi/

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-data-dir=${PREFIX}/share/smi \
			--with-pibdir=${PREFIX}/share/smi/pibs \
			--with-mibdir=${PREFIX}/share/smi/mibs

.include <bsd.port.mk>
