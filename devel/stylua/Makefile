COMMENT =	opinionated Lua code formatter

GH_ACCOUNT =	JohnnyMorganz
GH_PROJECT =	StyLua
GH_TAGNAME =	v0.15.2

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB}

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =       cargo

SEPARATE_BUILD =        Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/stylua ${PREFIX}/bin/

.include <bsd.port.mk>
