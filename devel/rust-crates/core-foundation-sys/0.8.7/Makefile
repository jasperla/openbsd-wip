# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: core-foundation-sys 0.8.7

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-core_foundation_sys_0_8_7-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/core-foundation-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/core-foundation-sys/
DISTFILES =		core-foundation-sys-0.8.7.tar.gz
WRKDIST =		${WRKDIR}/core-foundation-sys-0.8.7

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/core-foundation-sys-0.8.7.tar.gz \
		${PREFIX}/share/modcargo-crates/core-foundation-sys-0.8.7.tar.gz
	@echo "SOURCE_ONLY=1 NAME=core-foundation-sys VERSION=0.8.7" > \
		${PREFIX}/share/modcargo-crates/core-foundation-sys-0.8.7.meta

.include <bsd.port.mk>
