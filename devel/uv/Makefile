# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	extremely fast Python package installer and resolver

GH_ACCOUNT =	astral-sh
GH_PROJECT =	uv
GH_TAGNAME =	0.4.26

# Rust crates downloaded via git
ASYNC_HASH =	011b24604fa7bc223daaad7712c0694bac8f0a87
PUBGRUB_HASH =	7243f4faf8e54837aa8a401a18406e7173de4ad5
TL_HASH =	6e25b2ee2513d75385101a8ff9f591ef51f314ec

DIST_TUPLE +=	github charliermarsh rs-async-zip ${ASYNC_HASH} \
		${MODCARGO_VENDOR_DIR}
DIST_TUPLE +=	github astral-sh pubgrub ${PUBGRUB_HASH} ${MODCARGO_VENDOR_DIR}
DIST_TUPLE +=	github charliermarsh tl ${TL_HASH} ${MODCARGO_VENDOR_DIR}

CATEGORIES =	devel

# https://github.com/astral-sh/uv
HOMEPAGE =	https://docs.astral.sh/uv/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0, MIT
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS +=	devel/cargo-generate-vendor

LIB_DEPENDS +=	archivers/bzip2 archivers/zstd

WANTLIB +=	${MODCARGO_WANTLIB} m bz2 zstd

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

# Keep xz sources to statically link liblzma
# See https://github.com/astral-sh/uv/pull/5577
MODCARGO_CRATES_KEEP =	lzma-sys

SEPARATE_BUILD =	Yes

SUBST_VARS +=	MODCARGO_VENDOR_DIR PUBGRUB_HASH ASYNC_HASH TL_HASH

post-patch:
	${SUBST_CMD} ${WRKSRC}/Cargo.toml

	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/astral-sh-pubgrub-${PUBGRUB_HASH}.tar.gz \
		${MODCARGO_VENDOR_DIR}/pubgrub-${PUBGRUB_HASH}
	${LOCALBASE}/bin/cargo-generate-vendor ${FULLDISTDIR}/charliermarsh-$\
		rs-async-zip-${ASYNC_HASH}.tar.gz \
		${MODCARGO_VENDOR_DIR}/rs-async-zip-${ASYNC_HASH}
	${LOCALBASE}/bin/cargo-generate-vendor ${FULLDISTDIR}/charliermarsh-$\
		tl-${TL_HASH}.tar.gz ${MODCARGO_VENDOR_DIR}/tl-${TL_HASH}

# Generate shell completions
post-build:
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion bash \
		> ${WRKDIR}/uv.bash
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion fish \
		> ${WRKDIR}/uv.fish
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion zsh \
		> ${WRKDIR}/uv.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/uv ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKDIR}/uv.bash \
		${PREFIX}/share/bash-completion/completions/uv
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKDIR}/uv.fish ${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKDIR}/uv.zsh ${PREFIX}/share/zsh/site-functions/_uv

.include "crates.inc"

.include <bsd.port.mk>
