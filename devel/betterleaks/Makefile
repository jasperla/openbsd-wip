COMMENT =	tool to detect secrets

MODGO_MODNAME =	github.com/betterleaks/betterleaks
MODGO_VERSION =	v1.1.1

DISTNAME =	betterleaks-${MODGO_VERSION}

CATEGORIES =	devel

# https://github.com/betterleaks/betterleaks
HOMEPAGE =	https://betterleaks.com/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/version.Version=${MODGO_VERSION:S/v//}

TEST_TARGET =	./...

# Generate shell completions
post-build:
	${MODGO_WORKSPACE}/bin/betterleaks completion bash \
		> ${WRKBUILD}/betterleaks.bash
	${MODGO_WORKSPACE}/bin/betterleaks completion fish \
		> ${WRKBUILD}/betterleaks.fish
	${MODGO_WORKSPACE}/bin/betterleaks completion zsh \
		> ${WRKBUILD}/betterleaks.zsh

post-install:
	 ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/betterleaks
	 ${INSTALL_DATA} ${WRKSRC}/config/betterleaks.toml \
		 ${PREFIX}/share/examples/betterleaks/

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/betterleaks.bash \
		${PREFIX}/share/bash-completion/completions/betterleaks
	${INSTALL_DATA} ${WRKBUILD}/betterleaks.fish \
		${PREFIX}/share/fish/vendor_completions.d/betterleaks.fish
	${INSTALL_DATA} ${WRKBUILD}/betterleaks.zsh \
		${PREFIX}/share/zsh/site-functions/_betterleaks

.include "modules.inc"

.include <bsd.port.mk>
