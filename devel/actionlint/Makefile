COMMENT =	static checker for GitHub Actions workflow files

MODGO_MODNAME =	github.com/rhysd/actionlint
MODGO_VERSION =	v1.7.3

DISTNAME =	actionlint-${MODGO_VERSION}

HOMEPAGE =	https://github.com/rhysd/actionlint

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

SEPARATE_BUILD =	Yes

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}.version=${MODGO_VERSION:S/v//}

# NOK: some tests fail
do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
