# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: ndk-sys 0.5.0+25.2.9519653

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-ndk_sys_0_5_0_25_2_9519653-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/ndk-sys
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/ndk-sys/
DISTFILES =		ndk-sys-0.5.0+25.2.9519653.tar.gz
WRKDIST =		${WRKDIR}/ndk-sys-0.5.0+25.2.9519653

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/ndk-sys-0.5.0+25.2.9519653.tar.gz \
		${PREFIX}/share/modcargo-crates/ndk-sys-0.5.0_25.2.9519653.tar.gz
	@echo "SOURCE_ONLY=1 NAME=ndk-sys VERSION=0.5.0+25.2.9519653" > \
		${PREFIX}/share/modcargo-crates/ndk-sys-0.5.0_25.2.9519653.meta

.include <bsd.port.mk>
