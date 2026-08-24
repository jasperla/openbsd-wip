COMMENT =	code counter with complexity calculations and COCOMO

V =		4.0.0

MODGO_MODNAME =	github.com/boyter/scc/v4
MODGO_VERSION =	v${V}

DISTNAME =	scc-${V}

CATEGORIES =	devel textproc

HOMEPAGE =	https://github.com/boyter/scc/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

TEST_TARGET =	./...

.include "modules.inc"

.include <bsd.port.mk>
