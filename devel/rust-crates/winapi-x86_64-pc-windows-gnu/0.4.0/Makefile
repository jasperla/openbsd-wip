# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: winapi-x86_64-pc-windows-gnu 0.4.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-winapi_x86_64_pc_windows_gnu_0_4_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/winapi-x86_64-pc-windows-gnu
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/winapi-x86_64-pc-windows-gnu/
DISTFILES =		winapi-x86_64-pc-windows-gnu-0.4.0.tar.gz
WRKDIST =		${WRKDIR}/winapi-x86_64-pc-windows-gnu-0.4.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/winapi-x86_64-pc-windows-gnu-0.4.0.tar.gz \
		${PREFIX}/share/modcargo-crates/winapi-x86_64-pc-windows-gnu-0.4.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=winapi-x86_64-pc-windows-gnu VERSION=0.4.0" > \
		${PREFIX}/share/modcargo-crates/winapi-x86_64-pc-windows-gnu-0.4.0.meta

.include <bsd.port.mk>
