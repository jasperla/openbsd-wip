# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-core 0.54.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_core_0_54_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-core
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows-core/
DISTFILES =		windows-core-0.54.0.tar.gz
WRKDIST =		${WRKDIR}/windows-core-0.54.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-core-0.54.0.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-core-0.54.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-core VERSION=0.54.0" > \
		${PREFIX}/share/modcargo-crates/windows-core-0.54.0.meta

.include <bsd.port.mk>
