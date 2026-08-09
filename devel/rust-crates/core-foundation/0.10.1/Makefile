# $OpenBSD$
# AUTO-GENERATED — source-only (no rlib on OpenBSD; windows/wasm/etc.)
# crates.io: core-foundation 0.10.1

COMMENT =	Rust crate source seed (no rlib)

PKGNAME =	rust-crate-core_foundation_0_10_1-0

SUBST_VARS =		MACHINE_ARCH

CATEGORIES =	devel
HOMEPAGE =	https://crates.io/crates/core-foundation
MAINTAINER =	Todd T. Fries <todd@fries.net>

PERMIT_PACKAGE =	Yes

DIST_SUBDIR =		cargo
SITES =			https://static.crates.io/crates/core-foundation/
DISTFILES =		core-foundation-0.10.1.tar.gz
WRKDIST =		${WRKDIR}/core-foundation-0.10.1

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		devel/cargo-generate-vendor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modcargo-crates
	${INSTALL_DATA} ${FULLDISTDIR}/core-foundation-0.10.1.tar.gz \
		${PREFIX}/share/modcargo-crates/core-foundation-0.10.1.tar.gz
	@echo "SOURCE_ONLY=1 NAME=core-foundation VERSION=0.10.1" > \
		${PREFIX}/share/modcargo-crates/core-foundation-0.10.1.meta

.include <bsd.port.mk>
