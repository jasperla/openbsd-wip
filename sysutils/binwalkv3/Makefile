COMMENT =	firmware analysis tool, re-written in Rust

GH_ACCOUNT =	ReFirmLabs
GH_PROJECT =	binwalk
GH_TAGNAME =	v3.1.0

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m fontconfig freetype lzma bz2

RUN_DEPENDS +=	archivers/xz archivers/bzip2

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# No tests in sources for version 3
NO_TEST =	Yes

.include "crates.inc"

.include <bsd.port.mk>
