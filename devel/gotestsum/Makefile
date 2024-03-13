COMMENT =	go test runner with output optimized for humans

MODGO_MODNAME =	gotest.tools/gotestsum
MODGO_VERSION =	v1.11.0

DISTNAME =      gotestsum-${MODGO_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/gotestyourself/gotestsum

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd.version=${MODGO_VERSION}

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
