# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: ndk 0.8.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-ndk_0_8_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/ndk
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/ndk/
DISTFILES =		ndk-0.8.0.tar.gz
WRKDIST =		${WRKDIR}/ndk-0.8.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/ndk-0.8.0.tar.gz \
		${PREFIX}/share/modcargo-crates/ndk-0.8.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=ndk VERSION=0.8.0" > \
		${PREFIX}/share/modcargo-crates/ndk-0.8.0.meta

.include <bsd.port.mk>
