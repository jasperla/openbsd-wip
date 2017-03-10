# $OpenBSD$

COMMENT=		logging w/flexible dispatching, filtering, & formatting

GH_ACCOUNT=		btcsuite
GH_PROJECT=		seelog
#GH_TAGNAME=		313961b101eb55f65ae0f03ddd4e322731763b6c
GH_COMMIT=		313961b101eb55f65ae0f03ddd4e322731763b6c
PKGNAME=		go-${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
WRKDIST=		${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}
DISTNAME=		${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}.tar.gz
CATEGORIES=		devel go

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

#BUILD_DEPENDS+= 

WANTLIB+=		c pthread
MODULES=		lang/go

MODGO_TYPE=	lib

.include <bsd.port.mk>
