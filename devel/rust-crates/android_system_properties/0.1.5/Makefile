# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: android_system_properties 0.1.5

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-android_system_properties_0_1_5-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/android_system_properties
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/android_system_properties/
DISTFILES =		android_system_properties-0.1.5.tar.gz
WRKDIST =		${WRKDIR}/android_system_properties-0.1.5

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/android_system_properties-0.1.5.tar.gz \
		${PREFIX}/share/modcargo-crates/android_system_properties-0.1.5.tar.gz
	@echo "SOURCE_ONLY=1 NAME=android_system_properties VERSION=0.1.5" > \
		${PREFIX}/share/modcargo-crates/android_system_properties-0.1.5.meta

.include <bsd.port.mk>
