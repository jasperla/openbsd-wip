# $OpenBSD$

COMMENT=	library and tools to access SMI MIB information

SHARED_LIBS +=  smi                  0.0      # 2.27

DISTNAME=	libsmi-0.4.8
CATEGORIES=	net

HOMEPAGE=	http://www.ibr.cs.tu-bs.de/projects/libsmi/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/libsmi/

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-data-dir=${PREFIX}/share/smi \
			--with-pibdir=${PREFIX}/share/smi/pibs \
			--with-mibdir=${PREFIX}/share/smi/mibs

.include <bsd.port.mk>
