COMMENT =	terminal based markdown reader

MODGO_MODNAME =	github.com/charmbracelet/glow/v2
MODGO_VERSION =	v2.0.0
REVISION =	0

DISTNAME =	glow-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =      https://github.com/charmbracelet/glow

MAINTAINER =    Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=      c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X main.Version=${MODGO_VERSION}

# Tests fail in glow_test.go => try to get datas from github.com
NO_TEST =	Yes

# Generate shells completion
post-build:
	HOME=${WRKSRC} ${MODGO_WORKSPACE}/bin/glow completion bash \
	     > ${WRKSRC}/completion.bash
	HOME=${WRKSRC} ${MODGO_WORKSPACE}/bin/glow completion fish \
	     > ${WRKSRC}/completion.fish
	HOME=${WRKSRC} ${MODGO_WORKSPACE}/bin/glow completion zsh \
	     > ${WRKSRC}/completion.zsh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completion.bash \
	${PREFIX}/share/bash-completion/completions/glow

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/completion.fish \
		${PREFIX}/share/fish/vendor_completions.d/glow.fish

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completion.zsh \
		${PREFIX}/share/zsh/site-functions/_glow

.include "modules.inc"

.include <bsd.port.mk>
