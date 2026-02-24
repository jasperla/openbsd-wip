COMMENT =	modern command-line DNS client (like dig)

MODGO_MODNAME =	github.com/mr-karan/doggo
MODGO_VERSION =	v1.1.5

DISTNAME =	doggo-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/mr-karan/doggo

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X main.buildVersion=${MODGO_VERSION}

SEPARATE_BUILD =	Yes

NO_TEST =		Yes

# Remove buildDate from version
do-patch:
	sed -i 's/fmt\.Printf("%s - %s\\n", buildVersion, buildDate)/$\
		fmt.Printf("%s\\n", buildVersion)/' ${WRKSRC}/cmd/doggo/cli.go
	sed -i 's/ - {{ .Date | color "red" "" }}//' ${WRKSRC}/cmd/doggo/help.go
	sed -i '/buildDate/d' ${WRKSRC}/cmd/doggo/help.go

# Generate shell completions
post-build:
	mkdir -p ${WRKSRC}/completions
	${WRKDIR}/go/bin/doggo completions bash > ${WRKSRC}/completions/doggo.bash
	${WRKDIR}/go/bin/doggo completions fish > ${WRKSRC}/completions/doggo.fish
	${WRKDIR}/go/bin/doggo completions zsh > ${WRKSRC}/completions/doggo.zsh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.bash \
		${PREFIX}/share/bash-completion/completions/doggo

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.fish \
		${PREFIX}/share/fish/vendor_completions.d/

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/doggo.zsh \
		${PREFIX}/share/zsh/site-functions/_doggo

.include "modules.inc"

.include <bsd.port.mk>
