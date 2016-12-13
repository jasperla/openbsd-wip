# $OpenBSD$

COMMENT=	wrapper for the user, group and hosts NSS API

SHARED_LIBS +=	uid_wrapper               0.0 # 0.0

DISTNAME=	uid_wrapper-1.2.1

CATEGORIES=	devel

HOMEPAGE=	https://cwrap.org/

# XXX
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	pthread

MASTER_SITES=	https://ftp.samba.org/pub/cwrap/

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DMAN_INSTALL_DIR=${PREFIX}/man

NO_TEST=	Yes

.include <bsd.port.mk>
