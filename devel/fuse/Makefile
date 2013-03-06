# $OpenBSD: Makefile,v 1.33 2013/01/09 00:02:15 brad Exp $

COMMENT=	file system in userland

VERSION=	2.9.2
DISTNAME=	fuse-${VERSION}
CATEGORIES=	devel
SHARED_LIBS +=  fuse		2.9
SHARED_LIBS +=  ulockmgr 	2.9

HOMEPAGE=	http://fuse.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER=	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
WANTLIB=	c pthread

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
