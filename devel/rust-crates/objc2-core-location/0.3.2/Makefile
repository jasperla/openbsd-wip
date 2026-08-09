# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: objc2-core-location 0.3.2

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-objc2_core_location_0_3_2-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/objc2-core-location
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/objc2-core-location/
DISTFILES =		objc2-core-location-0.3.2.tar.gz
WRKDIST =		${WRKDIR}/objc2-core-location-0.3.2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/objc2-core-location-0.3.2.tar.gz \
		${PREFIX}/share/modcargo-crates/objc2-core-location-0.3.2.tar.gz
	@echo "SOURCE_ONLY=1 NAME=objc2-core-location VERSION=0.3.2" > \
		${PREFIX}/share/modcargo-crates/objc2-core-location-0.3.2.meta

.include <bsd.port.mk>
