# $OpenBSD: Makefile,v$

COMMENT =	go implementation of wireguard

DISTNAME =	wireguard-go-0.0.20180613
#REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://www.wireguard.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =		https://git.zx2c4.com/wireguard-go/snapshot/

EXTRACT_SUFX =		.tar.xz

MODULES =		lang/go
BUILD_DEPENDS =		devel/go-sys \
			net/go-net \
			security/go-crypto \
			textproc/go-text

USE_GMAKE =		Yes

ALL_TARGET =		git.zx2c4.com/wireguard-go

.include <bsd.port.mk>
