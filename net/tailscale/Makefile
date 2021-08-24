# $OpenBSD$

COMMENT =	easiest, most secure way to use WireGuard and 2FA

MODGO_MODNAME =	tailscale.com
MODGO_VERSION =	v1.14.0

DISTNAME =	tailscale.com-${MODGO_VERSION}
PKGNAME =	tailscale-${MODGO_VERSION:S/v//}

CATEGORIES =	net

HOMEPAGE =	https://tailscale.com/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
