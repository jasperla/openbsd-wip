# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasm-bindgen-futures 0.4.64

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasm_bindgen_futures_0_4_64-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasm-bindgen-futures
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wasm-bindgen-futures-0.4.64.tar.gz{wasm-bindgen-futures/0.4.64/download}
WRKDIST =		${WRKDIR}/wasm-bindgen-futures-0.4.64

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasm-bindgen-futures-0.4.64.tar.gz \
		${PREFIX}/share/modcargo-crates/wasm-bindgen-futures-0.4.64.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasm-bindgen-futures VERSION=0.4.64" > \
		${PREFIX}/share/modcargo-crates/wasm-bindgen-futures-0.4.64.meta

.include <bsd.port.mk>
