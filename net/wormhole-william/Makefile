# $OpenBSD$

COMMENT =	magic wormhole implementation in Go

V =		1.0.2
DISTNAME =	wormhole-william-vendored-${V}
PKGNAME =	wormhole-william-${V}

GH_ACCOUNT =	psanford
GH_PROJECT =	wormhole-william
GH_TAGNAME =	v${V}

CATEGORIES =	net
HOMEPAGE =	https://github.com/psanford/wormhole-william

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES =	https://theunixzoo.co.uk/distfiles/

MODULES =		lang/go
MODGO_TYPE =		bin

.include <bsd.port.mk>
