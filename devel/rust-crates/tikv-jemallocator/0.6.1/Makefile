# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: tikv-jemallocator 0.6.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-tikv_jemallocator_0_6_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/tikv-jemallocator
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/tikv-jemallocator/
DISTFILES =		tikv-jemallocator-0.6.1.tar.gz
WRKDIST =		${WRKDIR}/tikv-jemallocator-0.6.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/tikv-jemallocator-0.6.1.tar.gz \
		${PREFIX}/share/modcargo-crates/tikv-jemallocator-0.6.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=tikv-jemallocator VERSION=0.6.1" > \
		${PREFIX}/share/modcargo-crates/tikv-jemallocator-0.6.1.meta

.include <bsd.port.mk>
