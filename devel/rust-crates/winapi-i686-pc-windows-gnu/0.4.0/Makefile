# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: winapi-i686-pc-windows-gnu 0.4.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-winapi_i686_pc_windows_gnu_0_4_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/winapi-i686-pc-windows-gnu
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		winapi-i686-pc-windows-gnu-0.4.0.tar.gz{winapi-i686-pc-windows-gnu/0.4.0/download}
WRKDIST =		${WRKDIR}/winapi-i686-pc-windows-gnu-0.4.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/winapi-i686-pc-windows-gnu-0.4.0.tar.gz \
		${PREFIX}/share/modcargo-crates/winapi-i686-pc-windows-gnu-0.4.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=winapi-i686-pc-windows-gnu VERSION=0.4.0" > \
		${PREFIX}/share/modcargo-crates/winapi-i686-pc-windows-gnu-0.4.0.meta

.include <bsd.port.mk>
