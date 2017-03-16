# $OpenBSD$

COMMENT=		bitcoin-specific convenience functions and types

GH_ACCOUNT=		btcsuite
GH_PROJECT=		btcutil

GH_COMMIT=		ff82dacded1c76d101bce55c394c03c0bbff69e8
#PKGNAME=		go-${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
#WRKDIST=		/-

CATEGORIES=		devel go

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

#BUILD_DEPENDS+= 

WANTLIB+=	c pthread
MODULES=		lang/go

MODGO_TYPE=	lib

.include <bsd.port.mk>
