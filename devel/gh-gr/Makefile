COMMENT =	GitHub repository management tool

MODGO_MODNAME =	github.com/sarumaj/gh-gr/v2
MODGO_VERSION =	v2.7.12

DISTNAME =	gh-gr-${MODGO_VERSION:S/v//}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/sarumaj/gh-gr

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+=	devel/github-cli

WANTLIB +=	c pthread

MODULES =	lang/go

BUILD_DATE !=	date -u "+%Y-%m-%d %H:%M:%S UTC"

MODGO_LDFLAGS+=	-X 'main.Version=${MODGO_VERSION}'
MODGO_LDFLAGS+=	-X 'main.BuildDate=${BUILD_DATE}'

# Don't use vendor for build
MODGO_FLAGS = -mod=mod

# Some test fail for TestRESTClient: try to use network
do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
