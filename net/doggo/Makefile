COMMENT =	modern command-line DNS client (like dig) written in Golang

MODGO_MODNAME =	github.com/mr-karan/doggo
MODGO_VERSION =	v0.5.4

DISTNAME =	doggo-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/mr-karan/doggo

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

_BUILD_DATE =	$$(date +%Y-%m-%d)

MODGO_FLAGS +=	-ldflags "-X 'main.buildVersion=${MODGO_VERSION}' \
		-X 'main.buildDate=Build date: ${_BUILD_DATE}'"

.include "modules.inc"

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/doggo ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.zsh \
		${PREFIX}/share/zsh/site-functions/_doggo

.include <bsd.port.mk>
