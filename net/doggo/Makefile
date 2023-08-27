COMMENT =	modern command-line DNS client (like dig)

MODGO_MODNAME =	github.com/mr-karan/doggo
MODGO_VERSION =	v0.5.6

DISTNAME =	doggo-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/mr-karan/doggo

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X main.buildVersion=${MODGO_VERSION}

# for patch to apply
WRKDIST =	${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.zsh \
		${PREFIX}/share/zsh/site-functions/_doggo

.include "modules.inc"

.include <bsd.port.mk>
