# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasm-bindgen-shared 0.2.114

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasm_bindgen_shared_0_2_114-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasm-bindgen-shared
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wasm-bindgen-shared-0.2.114.tar.gz{wasm-bindgen-shared/0.2.114/download}
WRKDIST =		${WRKDIR}/wasm-bindgen-shared-0.2.114

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasm-bindgen-shared-0.2.114.tar.gz \
		${PREFIX}/share/modcargo-crates/wasm-bindgen-shared-0.2.114.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasm-bindgen-shared VERSION=0.2.114" > \
		${PREFIX}/share/modcargo-crates/wasm-bindgen-shared-0.2.114.meta

.include <bsd.port.mk>
