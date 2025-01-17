COMMENT =	minimal, blazing-fast, and customizable prompt for any shell

GH_ACCOUNT =	starship
GH_PROJECT =	starship
GH_TAGNAME =	v1.22.1

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

# Generate shell completions
post-build:
	${MODCARGO_TARGET_DIR}/release/starship completions bash > \
		${WRKDIR}/starship.bash
	${MODCARGO_TARGET_DIR}/release/starship completions fish > \
		${WRKDIR}/starship.fish
	${MODCARGO_TARGET_DIR}/release/starship completions zsh > \
		${WRKDIR}/starship.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/starship ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKDIR}/starship.bash \
		${PREFIX}/share/bash-completion/completions/starship
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKDIR}/starship.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKDIR}/starship.zsh \
		${PREFIX}/share/zsh/site-functions/_starship

.include "crates.inc"

.include <bsd.port.mk>
