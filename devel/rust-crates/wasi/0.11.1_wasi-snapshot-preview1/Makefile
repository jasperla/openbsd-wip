# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasi 0.11.1+wasi-snapshot-preview1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasi_0_11_1_wasi_snapshot_preview1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasi
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		wasi-0.11.1+wasi-snapshot-preview1.tar.gz{wasi/0.11.1+wasi-snapshot-preview1/download}
WRKDIST =		${WRKDIR}/wasi-0.11.1+wasi-snapshot-preview1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasi-0.11.1+wasi-snapshot-preview1.tar.gz \
		${PREFIX}/share/modcargo-crates/wasi-0.11.1_wasi-snapshot-preview1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasi VERSION=0.11.1+wasi-snapshot-preview1" > \
		${PREFIX}/share/modcargo-crates/wasi-0.11.1_wasi-snapshot-preview1.meta

.include <bsd.port.mk>
