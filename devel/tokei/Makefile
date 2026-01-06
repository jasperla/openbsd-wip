COMMENT =	display statistics about your code

GH_ACCOUNT =	XAMPPRocky
GH_PROJECT =	tokei
GH_TAGNAME =	v14.0.0

CATEGORIES =	devel textproc

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0, MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB}

MODULES =	devel/cargo

CONFIGURE_STYLE=	cargo
SEPARATE_BUILD =	Yes

MODCARGO_FEATURES =	all

.include "crates.inc"

.include <bsd.port.mk>
