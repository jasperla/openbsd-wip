# $OpenBSD: Makefile,v 1.33 2013/01/09 00:02:15 brad Exp $

COMMENT=	Mount remote directories over ssh

VERSION=	2.4
DISTNAME=	sshfs-fuse-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://sshfs.sourceforge.net/
MASTER_SITES=	http://sourceforge.net/projects/fuse/files/sshfs-fuse/${VERSION}/

MAINTAINER=	Gallon Sylvestre <ccna.syl@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
WANTLIB=	c pthread glib-2.0
LIB_DEPENDS=	devel/fuse
LIB_DEPENDS+=	devel/glib2

USE_GMAKE=	Yes

.include <bsd.port.mk>
