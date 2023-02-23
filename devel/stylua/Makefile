COMMENT =	opinionated Lua code formatter

GH_ACCOUNT =	JohnnyMorganz
GH_PROJECT =	StyLua
GH_TAGNAME =	v0.16.1

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MPL-2.0
PERMIT_PACKAGE =	Yes

DISTFILES +=	${GH_DISTFILE}

WANTLIB +=	${MODCARGO_WANTLIB}

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/stylua ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
