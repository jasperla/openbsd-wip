# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: clang-sys 1.8.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-clang_sys_1_8_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/clang-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		clang-sys-1.8.1.tar.gz{clang-sys/1.8.1/download}
WRKDIST =		${WRKDIR}/clang-sys-1.8.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/clang-sys-1.8.1.tar.gz \
		${PREFIX}/share/modcargo-crates/clang-sys-1.8.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=clang-sys VERSION=1.8.1" > \
		${PREFIX}/share/modcargo-crates/clang-sys-1.8.1.meta

.include <bsd.port.mk>
