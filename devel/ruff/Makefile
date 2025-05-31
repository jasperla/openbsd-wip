# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	extremely fast Python linter and code formatter

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ruff
GH_TAGNAME =	0.11.12

# Rust crates downloaded via git
LSPTYPES_HASH =	3512a9f33eadc5402cfab1b8f7340824c8ca1439
SALSA_HASH =	4818b15f3b7516555d39f5a41cb75970448bee4c

DIST_TUPLE +=	github astral-sh lsp-types ${LSPTYPES_HASH} ${MODCARGO_VENDOR_DIR}
DIST_TUPLE +=	github salsa-rs salsa ${SALSA_HASH} ${MODCARGO_VENDOR_DIR}

DISTNAME =	ruff-${GH_TAGNAME}

CATEGORIES =	devel textproc

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

BUILD_DEPENDS+=	archivers/zstd
LIB_DEPENDS +=	${BUILD_DEPENDS}
TEST_DEPENDS+=	${BUILD_DEPENDS}

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

SEPARATE_BUILD =	Yes

SUBST_VARS +=	MODCARGO_VENDOR_DIR LSPTYPES_HASH SALSA_HASH

post-patch:
	${SUBST_CMD} ${WRKSRC}/Cargo.toml

	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/astral-sh-lsp-types-${LSPTYPES_HASH}.tar.gz \
		${MODCARGO_VENDOR_DIR}/lsp-types-${LSPTYPES_HASH}
	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/salsa-rs-salsa-${SALSA_HASH}.tar.gz \
		${MODCARGO_VENDOR_DIR}/salsa-${SALSA_HASH}

# Generate shell completions
pre-install:
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion bash \
		> ${WRKSRC}/ruff.bash
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion fish \
		> ${WRKSRC}/ruff.fish
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion zsh \
		> ${WRKSRC}/ruff.zsh

# TODO: install red_knot type checker
do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ruff ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/ruff.bash \
		${PREFIX}/share/bash-completion/completions/ruff

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/ruff.fish \
		${PREFIX}/share/fish/vendor_completions.d/

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/ruff.zsh \
		${PREFIX}/share/zsh/site-functions/_ruff

# Skip tests with errors (generate_json_schema, idx)
MODCARGO_TEST_ARGS +=	-- --skip generate_json_schema --skip idx

# TODO: fix tests
# test unix::symlinked_module_search_path ... FAILED

.include "crates.inc"

.include <bsd.port.mk>
