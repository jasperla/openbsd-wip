# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: security-framework-sys 2.15.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-security_framework_sys_2_15_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/security-framework-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/security-framework-sys/
DISTFILES =		security-framework-sys-2.15.0.tar.gz
WRKDIST =		${WRKDIR}/security-framework-sys-2.15.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/security-framework-sys-2.15.0.tar.gz \
		${PREFIX}/share/modcargo-crates/security-framework-sys-2.15.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=security-framework-sys VERSION=2.15.0" > \
		${PREFIX}/share/modcargo-crates/security-framework-sys-2.15.0.meta

.include <bsd.port.mk>
