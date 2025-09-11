COMMENT =	go test runner with output optimized for humans

MODGO_MODNAME =	gotest.tools/gotestsum
MODGO_VERSION =	v1.13.0

DISTNAME =      gotestsum-${MODGO_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/gotestyourself/gotestsum

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

# for patches to apply
WRKDIST = ${WRKSRC}

pre-configure:
	sed -i 's/GOTESTSUM_VERSION/${MODGO_VERSION:S/v//}/' ${WRKSRC}/cmd/main.go

# TODO
# Run tests with gotestsum fails => need to download Go modules on GH
# do-test:
# cd ${WRKSRC} && ${MODGO_WORKSPACE}/bin/gotestsum -f testname -- ./... -count=1

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
