# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: security-framework 3.5.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-security_framework_3_5_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/security-framework
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/security-framework/
DISTFILES =		security-framework-3.5.1.tar.gz
WRKDIST =		${WRKDIR}/security-framework-3.5.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/security-framework-3.5.1.tar.gz \
		${PREFIX}/share/modcargo-crates/security-framework-3.5.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=security-framework VERSION=3.5.1" > \
		${PREFIX}/share/modcargo-crates/security-framework-3.5.1.meta

.include <bsd.port.mk>
