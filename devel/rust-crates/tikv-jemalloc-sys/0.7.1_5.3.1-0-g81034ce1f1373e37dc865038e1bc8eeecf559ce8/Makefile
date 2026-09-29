# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: tikv-jemalloc-sys 0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-tikv_jemalloc_sys_0_7_1_5_3_1_0_g81034ce1f1373e37dc865038e1bc8eeecf559ce8-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/tikv-jemalloc-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		tikv-jemalloc-sys-0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8.tar.gz{tikv-jemalloc-sys/0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8/download}
WRKDIST =		${WRKDIR}/tikv-jemalloc-sys-0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/tikv-jemalloc-sys-0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8.tar.gz \
		${PREFIX}/share/modcargo-crates/tikv-jemalloc-sys-0.7.1_5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8.tar.gz
	@echo "SOURCE_ONLY=1 NAME=tikv-jemalloc-sys VERSION=0.7.1+5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8" > \
		${PREFIX}/share/modcargo-crates/tikv-jemalloc-sys-0.7.1_5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8.meta

.include <bsd.port.mk>
