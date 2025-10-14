COMMENT =	syntax-aware git merge driver

VERSION =	0.15.0

DISTNAME =	mergiraf-${VERSION}

DIST_TUPLE =	codeberg mergiraf mergiraf v${VERSION} .

CATEGORIES =	devel

# https://codeberg.org/mergiraf/mergiraf
HOMEPAGE =	https://mergiraf.org/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS +=	devel/cargo-generate-vendor

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

post-extract:
	mv ${WRKDIR}/mergiraf/ ${WRKDIST}

.include "crates.inc"

.include <bsd.port.mk>
