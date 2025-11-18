# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	faster Nmap Scanning with Rust

GH_ACCOUNT =	bee-san
GH_PROJECT =	RustScan
GH_TAGNAME =	2.4.1

DISTNAME =	${GH_PROJECT:L}-${GH_TAGNAME}

CATEGORIES =	net

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
