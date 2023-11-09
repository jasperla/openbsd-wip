COMMENT =	log file highlighter

GH_ACCOUNT =	bensadeh
GH_PROJECT =	tailspin
GH_TAGNAME =	2.0.0

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

# TODO
# install completion for zsh, fish and bash

.include "crates.inc"

.include <bsd.port.mk>
