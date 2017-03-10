# $OpenBSD$

COMMENT =		alternative full node bitcoin implementation

GH_ACCOUNT =		btcsuite
GH_PROJECT =		btcd
GH_TAGNAME =		v0.12.0-beta
DISTNAME   =		BTCD_0_12_0_BETA
WRKDIST    =		${WRKDIR}/btcd-${DISTNAME}

MASTER_SITES_GITHUB += \
	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/archive/

CATEGORIES =		sysutils

MAINTAINER =		toddf

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

BUILD_DEPENDS+=	devel/go-btcsuite-websocket \
		devel/go-btcsuite-btcutil \
		devel/go-btcsuite-btclog

.include <bsd.port.mk>
