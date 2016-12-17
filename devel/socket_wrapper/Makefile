# $OpenBSD$

COMMENT=	wrapper for the user, group and hosts NSS API

SHARED_LIBS +=	socket_wrapper               0.0 # 0.0

DISTNAME=	socket_wrapper-1.1.7

CATEGORIES=	devel

HOMEPAGE=	https://cwrap.org/

# XXX
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://ftp.samba.org/pub/cwrap/

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DMAN_INSTALL_DIR=${PREFIX}/man

NO_TEST=	Yes

.include <bsd.port.mk>
