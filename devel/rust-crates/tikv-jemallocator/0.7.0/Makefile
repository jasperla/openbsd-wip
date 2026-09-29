# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: tikv-jemallocator 0.7.0

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-tikv_jemallocator_0_7_0-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/tikv-jemallocator
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://crates.io/api/v1/crates/
DISTFILES =		tikv-jemallocator-0.7.0.tar.gz{tikv-jemallocator/0.7.0/download}
WRKDIST =		${WRKDIR}/tikv-jemallocator-0.7.0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/tikv-jemallocator-0.7.0.tar.gz \
		${PREFIX}/share/modcargo-crates/tikv-jemallocator-0.7.0.tar.gz
	@echo "SOURCE_ONLY=1 NAME=tikv-jemallocator VERSION=0.7.0" > \
		${PREFIX}/share/modcargo-crates/tikv-jemallocator-0.7.0.meta

.include <bsd.port.mk>
