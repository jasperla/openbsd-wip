# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: wasip3 0.4.0+wasi-0.3.0-rc-2026-01-06

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-wasip3_0_4_0_wasi_0_3_0_rc_2026_01_06-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/wasip3
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/wasip3/
DISTFILES =		wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06.tar.gz
WRKDIST =		${WRKDIR}/wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06.tar.gz \
		${PREFIX}/share/modcargo-crates/wasip3-0.4.0_wasi-0.3.0-rc-2026-01-06.tar.gz
	@echo "SOURCE_ONLY=1 NAME=wasip3 VERSION=0.4.0+wasi-0.3.0-rc-2026-01-06" > \
		${PREFIX}/share/modcargo-crates/wasip3-0.4.0_wasi-0.3.0-rc-2026-01-06.meta

.include <bsd.port.mk>
