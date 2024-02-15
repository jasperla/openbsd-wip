COMMENT =	minimal, blazing-fast, and customizable prompt for any shell

GH_ACCOUNT =	starship
GH_PROJECT =	starship
GH_TAGNAME =	v1.17.1

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

HOMEPAGE =	https://starship.rs

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

# Disable build for battery feature
# starship-battery crate not supported on OpenBSD
MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =		notify gix-max-perf

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# For tests
PORTHOME =	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/starship ${PREFIX}/bin

# TODO generate and add completions for Bash, Fish and ZSH

.include "crates.inc"

.include <bsd.port.mk>
