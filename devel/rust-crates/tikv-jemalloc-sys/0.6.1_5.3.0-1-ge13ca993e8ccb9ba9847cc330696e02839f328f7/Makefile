# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: tikv-jemalloc-sys 0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-tikv_jemalloc_sys_0_6_1_5_3_0_1_ge13ca993e8ccb9ba9847cc330696e02839f328f7-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/tikv-jemalloc-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/tikv-jemalloc-sys/
DISTFILES =		tikv-jemalloc-sys-0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7.tar.gz
WRKDIST =		${WRKDIR}/tikv-jemalloc-sys-0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/tikv-jemalloc-sys-0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7.tar.gz \
		${PREFIX}/share/modcargo-crates/tikv-jemalloc-sys-0.6.1_5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7.tar.gz
	@echo "SOURCE_ONLY=1 NAME=tikv-jemalloc-sys VERSION=0.6.1+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7" > \
		${PREFIX}/share/modcargo-crates/tikv-jemalloc-sys-0.6.1_5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7.meta

.include <bsd.port.mk>
