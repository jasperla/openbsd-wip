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

# Generate shell completions
post-install:
.for i in bash fish zsh
	${MODCARGO_TARGET_DIR}/release/zizmor --completions $i > ${WRKSRC}/zizmor.$i
.endfor
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/zizmor.bash \
		${PREFIX}/share/bash-completion/completions/zizmor
		${INSTALL_DATA} ${WRKSRC}/zizmor.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/zizmor.zsh \
		${PREFIX}/share/zsh/site-functions/_zizmor

.include "crates.inc"

.include <bsd.port.mk>
