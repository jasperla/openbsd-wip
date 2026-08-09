# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: rustls-platform-verifier-android 0.1.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-rustls_platform_verifier_android_0_1_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/rustls-platform-verifier-android
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/rustls-platform-verifier-android/
DISTFILES =		rustls-platform-verifier-android-0.1.1.tar.gz
WRKDIST =		${WRKDIR}/rustls-platform-verifier-android-0.1.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/rustls-platform-verifier-android-0.1.1.tar.gz \
		${PREFIX}/share/modcargo-crates/rustls-platform-verifier-android-0.1.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=rustls-platform-verifier-android VERSION=0.1.1" > \
		${PREFIX}/share/modcargo-crates/rustls-platform-verifier-android-0.1.1.meta

.include <bsd.port.mk>
