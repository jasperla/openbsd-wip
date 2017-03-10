# $OpenBSD$

COMMENT =		A WebSocket implementation for Go.

GH_ACCOUNT =		btcsuite
GH_PROJECT	=	websocket
GH_COMMIT	=	31079b6807923eb23992c421b114992b95131b55
PKGNAME		=	go-${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}
DISTNAME	=	${GH_ACCOUNT}-${GH_PROJECT}-${GH_COMMIT}.tar.gz
#WRKDIST    =		${WRKDIR}/btcd-${DISTNAME}

#MASTER_SITES_GITHUB += \
#	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/archive/

CATEGORIES =		devel

MAINTAINER =		toddf

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

MODGO_TYPE=	lib

#BUILD_DEPENDS+=	devel/go-btcsuite-websocket

.include <bsd.port.mk>
