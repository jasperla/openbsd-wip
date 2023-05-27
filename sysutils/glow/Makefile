COMMENT =	terminal based markdown reader

MODGO_MODNAME =	github.com/charmbracelet/glow
MODGO_VERSION =	v1.5.1

DISTNAME =	glow-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =      https://github.com/charmbracelet/glow

MAINTAINER =    Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=      c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X main.Version=${MODGO_VERSION:S/v//}

.include "modules.inc"

.include <bsd.port.mk>
