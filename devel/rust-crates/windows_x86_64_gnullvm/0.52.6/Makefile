# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: windows_x86_64_gnullvm 0.52.6

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-windows_x86_64_gnullvm_0_52_6-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/windows_x86_64_gnullvm
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/windows_x86_64_gnullvm/
DISTFILES =		windows_x86_64_gnullvm-0.52.6.tar.gz
WRKDIST =		${WRKDIR}/windows_x86_64_gnullvm-0.52.6

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/windows_x86_64_gnullvm-0.52.6.tar.gz \
		${PREFIX}/share/modcargo-crates/windows_x86_64_gnullvm-0.52.6.tar.gz
	@echo "SOURCE_ONLY=1 NAME=windows_x86_64_gnullvm VERSION=0.52.6" > \
		${PREFIX}/share/modcargo-crates/windows_x86_64_gnullvm-0.52.6.meta

.include <bsd.port.mk>
