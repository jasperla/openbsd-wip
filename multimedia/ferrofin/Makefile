COMMENT =		API compatible Jellyfin server in Rust
DIST_TUPLE =		github	mangoleaf	ferrofin	v1.3.2	.
CATEGORIES =		multimedia net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m sqlite3 zstd

MODULES =		devel/cargo

LIB_DEPENDS =		archivers/zstd \
			databases/sqlite3

RUN_DEPENDS =		graphics/ffmpeg

CONFIGURE_STYLE =	cargo

MODCARGO_CARGOTOML =	apps/ferrofin-server/Cargo.toml
MODCARGO_INSTALL_TARGET_PATHS =	${MODCARGO_CARGOTOML:H}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include "crates.inc"
.include <bsd.port.mk>
