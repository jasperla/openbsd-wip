# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "aarch64"
USE_NOEXECONLY =	Yes
.endif

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

DATA_DIR =		${VARBASE}/${PKGSTEM}
DOC_DIR =		${PREFIX}/share/doc/${PKGSTEM}
SUBST_VARS =		DATA_DIR

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/CONFIG.md ${DOC_DIR}/

.include "crates.inc"
.include <bsd.port.mk>
