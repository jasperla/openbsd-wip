# $

COMMENT=		a subsystem aware logger backed by seelog

GH_ACCOUNT=		btcsuite
GH_PROJECT=		btclog
GH_TAGNAME=		v0.0.0-20170628155309-84c8d2346e9f
PKGNAME=		go-${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
WRKDIST=		${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES=		devel go


MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES= Yes

#BUILD_DEPENDS+= 	devel/go-btcsuite-seelog

WANTLIB+=		c pthread
MODULES=		lang/go

MODGO_TYPE=	lib

.include <bsd.port.mk>
