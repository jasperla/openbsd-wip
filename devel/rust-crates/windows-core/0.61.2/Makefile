# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-core 0.61.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_core_0_61_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-core
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		windows-core-0.61.2.tar.gz{windows-core/0.61.2/download}
WRKDIST =		${WRKDIR}/windows-core-0.61.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-core-0.61.2.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-core-0.61.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-core VERSION=0.61.2" > \
		${PREFIX}/share/modcargo-crates/windows-core-0.61.2.meta

.include <bsd.port.mk>
