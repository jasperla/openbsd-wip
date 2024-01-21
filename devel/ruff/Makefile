# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	extremely fast Python linter and code formatter

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ruff
GH_TAGNAME =	v0.1.14

CATEGORIES =	devel textproc

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

BUILD_DEPENDS =	security/rust-ring

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ruff ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
