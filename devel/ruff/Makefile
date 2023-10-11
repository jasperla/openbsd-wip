# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	extremely fast Python linter

GH_ACCOUNT =	charliermarsh
GH_PROJECT =	ruff
GH_TAGNAME =	v0.0.292

CATEGORIES =	devel

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

# Need some Rust extra packages
LIBCST_COMMIT =		03179b55ebe7e916f1722e18e8f0b87c01616d1f
UNICODE_NAMES2_COMMIT =	4ce16aa85cbcdd9cc830410f1a72ef9a235f2fde

DIST_TUPLE +=	github Instagram LibCST ${LIBCST_COMMIT} \
		${MODCARGO_VENDOR_DIR}/libcst-0.1.0
DIST_TUPLE +=	github youknowone unicode_names2 ${UNICODE_NAMES2_COMMIT} \
		${MODCARGO_VENDOR_DIR}/unicode_names2-0.6.0

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =	security/rust-ring

SUBST_VARS +=	MODCARGO_VENDOR_DIR

post-patch:
	${SUBST_CMD} ${WRKSRC}/Cargo.toml
	${SUBST_CMD} ${WRKSRC}/crates/ruff_linter/Cargo.toml
	${SUBST_CMD} ${WRKSRC}/crates/ruff_python_parser/Cargo.toml

# Generate metadata for Rust extra packages (see devel/cargo/cargo.port.mk)
pre-build:
	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/Instagram-LibCST-${LIBCST_COMMIT}.tar.gz \
		${MODCARGO_VENDOR_DIR}/libcst-0.1.0/native
	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/youknowone-unicode_names2-${UNICODE_NAMES2_COMMIT}.tar.gz \
		${MODCARGO_VENDOR_DIR}/unicode_names2-0.6.0

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ruff ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/flake8-to-ruff ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
