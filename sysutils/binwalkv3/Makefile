COMMENT =	firmware analysis tool, re-written in Rust

COMMIT =	e06871ff65d38b08bba6e8c37f17dba1cbc2e0de

PKGNAME =	binwalkv3-20240923

DIST_TUPLE +=	github  ReFirmLabs binwalk ${COMMIT} .

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/ReFirmLabs/binwalk/tree/binwalkv3

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m fontconfig freetype lzma

RUN_DEPENDS +=	archivers/xz

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# No tests in sources for version 3
NO_TEST =	Yes

post-extract:
	cp ${FILESDIR}/Cargo.lock ${WRKSRC}

.include "crates.inc"

.include <bsd.port.mk>
