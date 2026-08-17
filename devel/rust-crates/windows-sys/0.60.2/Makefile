# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-sys 0.60.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_sys_0_60_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		windows-sys-0.60.2.tar.gz{windows-sys/0.60.2/download}
WRKDIST =		${WRKDIR}/windows-sys-0.60.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-sys-0.60.2.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-sys-0.60.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-sys VERSION=0.60.2" > \
		${PREFIX}/share/modcargo-crates/windows-sys-0.60.2.meta

.include <bsd.port.mk>
