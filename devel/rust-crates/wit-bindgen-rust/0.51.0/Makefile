# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wit-bindgen-rust 0.51.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wit_bindgen_rust_0_51_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wit-bindgen-rust
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wit-bindgen-rust-0.51.0.tar.gz{wit-bindgen-rust/0.51.0/download}
WRKDIST =		${WRKDIR}/wit-bindgen-rust-0.51.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wit-bindgen-rust-0.51.0.tar.gz \
		${PREFIX}/share/modcargo-crates/wit-bindgen-rust-0.51.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wit-bindgen-rust VERSION=0.51.0" > \
		${PREFIX}/share/modcargo-crates/wit-bindgen-rust-0.51.0.meta

.include <bsd.port.mk>
