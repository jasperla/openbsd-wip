COMMENT =	terminal based markdown reader

MODGO_MODNAME =	github.com/charmbracelet/glow
MODGO_VERSION =	v1.5.1

DISTNAME =	glow-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =      https://github.com/charmbracelet/glow

MAINTAINER =    Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=      c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X main.Version=${MODGO_VERSION:S/v//}

# Tests fail in glow_test.go => try to get datas from github.com
NO_TEST =	Yes

# Generate shells completion
post-build:
	${MODGO_WORKSPACE}/bin/glow completion bash > ${WRKSRC}/completion.bash
	${MODGO_WORKSPACE}/bin/glow completion fish > ${WRKSRC}/completion.fish
	${MODGO_WORKSPACE}/bin/glow completion zsh > ${WRKSRC}/completion.zsh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completion.bash \
	${PREFIX}/share/bash-completion/completions/glow

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/completion.fish \
		${PREFIX}/share/fish/completions/glow.fish

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completion.zsh \
		${PREFIX}/share/zsh/site-functions/_glow

.include "modules.inc"

.include <bsd.port.mk>
