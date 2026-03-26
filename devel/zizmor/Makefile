COMMENT =	static analysis tool for GitHub Actions

GH_ACCOUNT =	zizmorcore
GH_PROJECT =	zizmor
GH_TAGNAME =	v1.23.1

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# https://github.com/zizmorcore/zizmor
HOMEPAGE =	https://docs.zizmor.sh/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/zizmor ${PREFIX}/bin/

# TODO Generate and install shell completions for bash/fish/zsh
# zizmor --completions = <shell>

.include "crates.inc"

.include <bsd.port.mk>
