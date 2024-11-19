COMMENT =	opinionated Lua code formatter

GH_ACCOUNT =	JohnnyMorganz
GH_PROJECT =	StyLua
GH_TAGNAME =	v2.0.1

PKGNAME =	${DISTNAME:L}

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB}

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
