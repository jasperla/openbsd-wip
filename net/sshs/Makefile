COMMENT =	terminal user interface for SSH

MODGO_MODNAME =	github.com/quantumsheep/sshs
MODGO_VERSION =	v0.0.0-20221106223025-976662bcfd8e

V =		3.4.0
DISTNAME =	sshs-${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/quantumsheep/sshs

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd.Version=${V}

.include "modules.inc"

.include <bsd.port.mk>
