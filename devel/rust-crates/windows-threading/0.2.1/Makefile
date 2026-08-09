# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows-threading 0.2.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_threading_0_2_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows-threading
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows-threading/
DISTFILES =		windows-threading-0.2.1.tar.gz
WRKDIST =		${WRKDIR}/windows-threading-0.2.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows-threading-0.2.1.tar.gz \
		${PREFIX}/share/modcargo-crates/windows-threading-0.2.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows-threading VERSION=0.2.1" > \
		${PREFIX}/share/modcargo-crates/windows-threading-0.2.1.meta

.include <bsd.port.mk>
