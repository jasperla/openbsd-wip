COMMENT =	log file highlighter

GH_ACCOUNT =	bensadeh
GH_PROJECT =	tailspin
GH_TAGNAME =	3.0.1

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/man/tspin.1 ${PREFIX}/man/man1/tspin.1

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/tspin.fish \
		${PREFIX}/share/fish/completions/

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completions/tspin.zsh \
		${PREFIX}/share/zsh/site-functions/_tspin

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/tspin.bash \
		${PREFIX}/share/bash-completion/completions/tspin

.include "crates.inc"

.include <bsd.port.mk>
