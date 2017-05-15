# $

COMMENT=		a subsystem aware logger backed by seelog

GH_ACCOUNT=		btcsuite
GH_PROJECT=		btclog
#GH_TAGNAME=		5005b7240f310ae8f01c7664a3954d280241eb2b
GH_COMMIT=		5005b7240f310ae8f01c7664a3954d280241eb2b
PKGNAME=		go-${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
WRKDIST=		${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
CATEGORIES=		devel go


MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS+= 	devel/go-btcsuite-seelog

WANTLIB+=		c pthread
MODULES=		lang/go

MODGO_TYPE=	lib

.include <bsd.port.mk>
